#line 1 "CERegManip.cpp"









#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"


























#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"














#line 43 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"





#pragma once
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

















































#line 100 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"




















#line 121 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 125 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 133 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 141 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 145 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"




#line 150 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 151 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#pragma warning(disable:4001)
#pragma warning(disable:4201)
#pragma warning(disable:4214)
#pragma warning(disable:4514)
#line 159 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"






#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"







#pragma pack(push,8)
#line 34 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"


extern "C" {
#line 38 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"










#line 49 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"






#line 57 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"








#line 66 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"
#line 67 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"





typedef enum _EXCEPTION_DISPOSITION {
    ExceptionContinueExecution,
    ExceptionContinueSearch,
    ExceptionNestedException,
    ExceptionCollidedUnwind
} EXCEPTION_DISPOSITION;











struct _EXCEPTION_RECORD;
struct _CONTEXT;

EXCEPTION_DISPOSITION __cdecl _except_handler (
    struct _EXCEPTION_RECORD *ExceptionRecord,
    void * EstablisherFrame,
    struct _CONTEXT *ContextRecord,
    void * DispatcherContext
    );



















#line 118 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"















unsigned long __cdecl _exception_code(void);
void *        __cdecl _exception_info(void);
int           __cdecl _abnormal_termination(void);

#line 138 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"













}
#line 153 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"


#pragma pack(pop)
#line 157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"

#line 159 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\excpt.h"
#line 160 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"






#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"







#pragma pack(push,8)
#line 34 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"


extern "C" {
#line 38 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"










typedef char *  va_list;
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"

#line 52 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"




































































































#line 153 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"



}
#line 158 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"


#pragma pack(pop)
#line 162 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"

#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdarg.h"
#line 161 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 162 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"















#line 17 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"












extern "C" {
#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"











typedef unsigned long ULONG;
typedef ULONG *PULONG;
typedef unsigned short USHORT;
typedef USHORT *PUSHORT;
typedef unsigned char UCHAR;
typedef UCHAR *PUCHAR;
typedef char *PSZ;
#line 51 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"








#line 60 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
#line 61 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 65 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 69 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 73 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 77 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 81 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"











#line 93 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"






#line 100 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 104 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"


























#line 132 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"







#line 140 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

typedef unsigned long       DWORD;
typedef int                 BOOL;
typedef unsigned char       BYTE;
typedef unsigned short      WORD;
typedef float               FLOAT;
typedef FLOAT               *PFLOAT;
typedef BOOL            *PBOOL;
typedef BOOL             *LPBOOL;
typedef BYTE            *PBYTE;
typedef BYTE             *LPBYTE;
typedef int             *PINT;
typedef int              *LPINT;
typedef WORD            *PWORD;
typedef WORD             *LPWORD;
typedef long             *LPLONG;
typedef DWORD           *PDWORD;
typedef DWORD            *LPDWORD;
typedef void             *LPVOID;
typedef const void       *LPCVOID;

typedef int                 INT;
typedef unsigned int        UINT;
typedef unsigned int        *PUINT;


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





















extern "C" {
#line 24 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"














#pragma once
#line 17 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"






#line 24 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"



extern "C" {
#line 29 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"


















#line 48 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"












typedef unsigned short wchar_t;

#line 63 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"



typedef wchar_t wint_t;
typedef wchar_t wctype_t;

#line 70 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"



#line 74 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"
#line 75 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"



 extern unsigned short _ctype[];
 extern unsigned short *_pctype;

 extern wctype_t *_pwctype;
#line 83 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"
#line 84 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"








                                













 int __cdecl _isctype(int, int);
 int __cdecl isalpha(int);
 int __cdecl isupper(int);
 int __cdecl islower(int);
 int __cdecl isdigit(int);
 int __cdecl isxdigit(int);
 int __cdecl isspace(int);
 int __cdecl ispunct(int);
 int __cdecl isalnum(int);
 int __cdecl isprint(int);
 int __cdecl isgraph(int);
 int __cdecl iscntrl(int);
 int __cdecl toupper(int);
 int __cdecl tolower(int);
 int __cdecl _tolower(int);
 int __cdecl _toupper(int);
 int __cdecl __isascii(int);
 int __cdecl __toascii(int);
 int __cdecl __iscsymf(int);
 int __cdecl __iscsym(int);

#line 128 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"









 int __cdecl iswalpha(wint_t);
 int __cdecl iswupper(wint_t);
 int __cdecl iswlower(wint_t);
 int __cdecl iswdigit(wint_t);
 int __cdecl iswxdigit(wint_t);
 int __cdecl iswspace(wint_t);
 int __cdecl iswpunct(wint_t);
 int __cdecl iswalnum(wint_t);
 int __cdecl iswprint(wint_t);
 int __cdecl iswgraph(wint_t);
 int __cdecl iswcntrl(wint_t);
 int __cdecl iswascii(wint_t);
 int __cdecl isleadbyte(int);

 wchar_t __cdecl towupper(wchar_t);
 wchar_t __cdecl towlower(wchar_t);

 int __cdecl iswctype(wint_t, wctype_t);


 int __cdecl is_wctype(wint_t, wctype_t);



#line 162 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"
#line 163 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"













 extern int __mb_cur_max;

#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"








































































#line 252 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"

#line 254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"








































#line 295 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"

#line 297 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"






#line 304 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"
















#line 321 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"

#line 323 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"


}
#line 327 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"


#line 330 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ctype.h"
#line 26 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




#line 31 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 39 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#line 43 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#line 47 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 49 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"































#line 81 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#line 85 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef unsigned long POINTER_64_INT;
#line 88 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 90 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\basetsd.h"
























extern "C" {
#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\basetsd.h"





typedef int LONG32, *PLONG32;
typedef int INT32, *PINT32;





typedef unsigned int ULONG32, *PULONG32;
typedef unsigned int DWORD32, *PDWORD32;
typedef unsigned int UINT32, *PUINT32;

















































































typedef long INT_PTR, *PINT_PTR;
typedef unsigned long UINT_PTR, *PUINT_PTR;





typedef unsigned short UHALF_PTR, *PUHALF_PTR;
typedef short HALF_PTR, *PHALF_PTR;











#line 144 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\basetsd.h"






typedef UINT_PTR SIZE_T, *PSIZE_T;
typedef INT_PTR SSIZE_T, *PSSIZE_T;





typedef __int64 LONG64, *PLONG64;
typedef __int64 INT64, *PINT64;






typedef unsigned __int64 ULONG64, *PULONG64;
typedef unsigned __int64 DWORD64, *PDWORD64;
typedef unsigned __int64 UINT64, *PUINT64;


}
#line 172 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\basetsd.h"

#line 174 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\basetsd.h"
#line 92 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"






#line 99 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef void *PVOID;
typedef void *  PVOID64;







#line 116 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"









#line 126 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"








typedef char CHAR;
typedef short SHORT;
typedef long LONG;
#line 138 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"






typedef wchar_t WCHAR;    



#line 149 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef WCHAR *PWCHAR;
typedef WCHAR *LPWCH, *PWCH;
typedef const WCHAR *LPCWCH, *PCWCH;
typedef WCHAR *NWPSTR;
typedef WCHAR *LPWSTR, *PWSTR;

typedef const WCHAR *LPCWSTR, *PCWSTR;




typedef CHAR *PCHAR;
typedef CHAR *LPCH, *PCH;

typedef const CHAR *LPCCH, *PCCH;
typedef CHAR *NPSTR;
typedef CHAR *LPSTR, *PSTR;
typedef const CHAR *LPCSTR, *PCSTR;







typedef WCHAR TCHAR, *PTCHAR;
typedef WCHAR TBYTE , *PTBYTE ;

#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef LPWSTR LPTCH, PTCH;
typedef LPWSTR PTSTR, LPTSTR;
typedef LPCWSTR LPCTSTR;
typedef LPWSTR LP;















#line 200 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



typedef SHORT *PSHORT;  
typedef LONG *PLONG;    


typedef void *HANDLE;




#line 213 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
typedef HANDLE *PHANDLE;





typedef BYTE   FCHAR;
typedef WORD   FSHORT;
typedef DWORD  FLONG;





typedef LONG HRESULT;

#line 230 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"


    


#line 236 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"









#line 246 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"













#line 260 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
















typedef char CCHAR;          
typedef DWORD LCID;         
typedef PDWORD PLCID;       
typedef WORD   LANGID;      
  
  





















typedef struct _FLOAT128 {
    __int64 LowPart;
    __int64 HighPart;
} FLOAT128;

typedef FLOAT128 *PFLOAT128;






#line 316 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"









typedef __int64 LONGLONG;
typedef unsigned __int64 ULONGLONG;














#line 342 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef LONGLONG *PLONGLONG;
typedef ULONGLONG *PULONGLONG;



typedef LONGLONG USN;



#line 353 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    };
    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;
#line 363 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
    LONGLONG QuadPart;
} LARGE_INTEGER;

typedef LARGE_INTEGER *PLARGE_INTEGER;




#line 372 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
typedef union _ULARGE_INTEGER {
    struct {
        DWORD LowPart;
        DWORD HighPart;
    };
    struct {
        DWORD LowPart;
        DWORD HighPart;
    } u;
#line 382 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
    ULONGLONG QuadPart;
} ULARGE_INTEGER;

typedef ULARGE_INTEGER *PULARGE_INTEGER;








typedef struct _LUID {
    DWORD LowPart;
    LONG HighPart;
} LUID, *PLUID;


typedef ULONGLONG  DWORDLONG;
typedef DWORDLONG *PDWORDLONG;






















#line 425 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"































































#line 489 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"











ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );

LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    );

ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );

#pragma warning(disable:4035)               

__inline ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shld    edx, eax, cl
        shl     eax, cl
    }
}

__inline LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        sar     edx, cl
    }
}

__inline ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        shr     edx, cl
    }
}

#pragma warning(default:4035)




























































#line 633 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



typedef BYTE  BOOLEAN;           
typedef BOOLEAN *PBOOLEAN;       





typedef struct _LIST_ENTRY {
   struct _LIST_ENTRY *Flink;
   struct _LIST_ENTRY *Blink;
} LIST_ENTRY, *PLIST_ENTRY, * PRLIST_ENTRY;






typedef struct _SINGLE_LIST_ENTRY {
    struct _SINGLE_LIST_ENTRY *Next;
} SINGLE_LIST_ENTRY, *PSINGLE_LIST_ENTRY;








typedef struct _GUID {          
    DWORD Data1;
    WORD   Data2;
    WORD   Data3;
    BYTE  Data4[8];
} GUID;

#line 672 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




typedef struct  _OBJECTID {     
    GUID Lineage;
    DWORD Uniquifier;
} OBJECTID;
#line 681 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"















































































































































































































































































































































































#line 1049 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



  

































  
#line 1088 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




typedef UINT_PTR KSPIN_LOCK;
typedef KSPIN_LOCK *PKSPIN_LOCK;














#line 1109 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
struct _TEB *
NtCurrentTeb(void);
#line 1112 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"








































































































































































































































































































































































































#pragma warning(disable:4164)   
                                

#pragma function(_enable)
#pragma function(_disable)
#line 1510 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#pragma warning(default:4164)   

#line 1514 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 1515 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#pragma warning (disable:4035)        
_inline PVOID GetFiberData( void ) { __asm {
                                        mov eax, fs:[0x10]
                                        mov eax,[eax]
                                        }
                                     }
_inline PVOID GetCurrentFiber( void ) { __asm mov eax, fs:[0x10] }

#pragma warning (default:4035)        
#line 1528 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
































#line 1561 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



typedef struct _FLOATING_SAVE_AREA {
    DWORD   ControlWord;
    DWORD   StatusWord;
    DWORD   TagWord;
    DWORD   ErrorOffset;
    DWORD   ErrorSelector;
    DWORD   DataOffset;
    DWORD   DataSelector;
    BYTE    RegisterArea[80];
    DWORD   Cr0NpxState;
} FLOATING_SAVE_AREA;

typedef FLOATING_SAVE_AREA *PFLOATING_SAVE_AREA;











typedef struct _CONTEXT {

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DWORD ContextFlags;

    
    
    
    
    

    DWORD   Dr0;
    DWORD   Dr1;
    DWORD   Dr2;
    DWORD   Dr3;
    DWORD   Dr6;
    DWORD   Dr7;

    
    
    
    

    FLOATING_SAVE_AREA FloatSave;

    
    
    
    

    DWORD   SegGs;
    DWORD   SegFs;
    DWORD   SegEs;
    DWORD   SegDs;

    
    
    
    

    DWORD   Edi;
    DWORD   Esi;
    DWORD   Ebx;
    DWORD   Edx;
    DWORD   Ecx;
    DWORD   Eax;

    
    
    
    

    DWORD   Ebp;
    DWORD   Eip;
    DWORD   SegCs;              
    DWORD   EFlags;             
    DWORD   Esp;
    DWORD   SegSs;

    
    
    
    
    

    BYTE    ExtendedRegisters[512];

} CONTEXT;



typedef CONTEXT *PCONTEXT;



#line 1681 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef struct _LDT_ENTRY {
    WORD    LimitLow;
    WORD    BaseLow;
    union {
        struct {
            BYTE    BaseMid;
            BYTE    Flags1;     
            BYTE    Flags2;     
            BYTE    BaseHi;
        } Bytes;
        struct {
            DWORD   BaseMid : 8;
            DWORD   Type : 5;
            DWORD   Dpl : 2;
            DWORD   Pres : 1;
            DWORD   LimitHi : 4;
            DWORD   Sys : 1;
            DWORD   Reserved_0 : 1;
            DWORD   Default_Big : 1;
            DWORD   Granularity : 1;
            DWORD   BaseHi : 8;
        } Bits;
    } HighWord;
} LDT_ENTRY, *PLDT_ENTRY;

#line 1712 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

























































































































































































































































































































































#line 2058 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"










#line 2069 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





































































































































































































































#line 2299 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




































































































































































































































#line 2528 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"















#line 2544 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"






































































































































































































































































































































































































































































































































































































typedef struct _EXCEPTION_RECORD {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    struct _EXCEPTION_RECORD *ExceptionRecord;
    PVOID ExceptionAddress;
    DWORD NumberParameters;
    UINT_PTR ExceptionInformation[15];
    } EXCEPTION_RECORD;

typedef EXCEPTION_RECORD *PEXCEPTION_RECORD;





typedef struct _EXCEPTION_POINTERS {
    PEXCEPTION_RECORD ExceptionRecord;
    PCONTEXT ContextRecord;
} EXCEPTION_POINTERS, *PEXCEPTION_POINTERS;
typedef PVOID PACCESS_TOKEN;            
typedef PVOID PSECURITY_DESCRIPTOR;     
typedef PVOID PSID;     







































typedef DWORD ACCESS_MASK;
typedef ACCESS_MASK *PACCESS_MASK;
























































typedef struct _GENERIC_MAPPING {
    ACCESS_MASK GenericRead;
    ACCESS_MASK GenericWrite;
    ACCESS_MASK GenericExecute;
    ACCESS_MASK GenericAll;
} GENERIC_MAPPING;
typedef GENERIC_MAPPING *PGENERIC_MAPPING;












#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 3265 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _LUID_AND_ATTRIBUTES {
    LUID Luid;
    DWORD Attributes;
    } LUID_AND_ATTRIBUTES, * PLUID_AND_ATTRIBUTES;
typedef LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[1];
typedef LUID_AND_ATTRIBUTES_ARRAY *PLUID_AND_ATTRIBUTES_ARRAY;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 3274 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"


































typedef struct _SID_IDENTIFIER_AUTHORITY {
    BYTE  Value[6];
} SID_IDENTIFIER_AUTHORITY, *PSID_IDENTIFIER_AUTHORITY;
#line 3312 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




typedef struct _SID {
   BYTE  Revision;
   BYTE  SubAuthorityCount;
   SID_IDENTIFIER_AUTHORITY IdentifierAuthority;



   DWORD SubAuthority[1];
#line 3325 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
} SID, *PISID;
#line 3327 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




                                                

typedef enum _SID_NAME_USE {
    SidTypeUser = 1,
    SidTypeGroup,
    SidTypeDomain,
    SidTypeAlias,
    SidTypeWellKnownGroup,
    SidTypeDeletedAccount,
    SidTypeInvalid,
    SidTypeUnknown,
    SidTypeComputer
} SID_NAME_USE, *PSID_NAME_USE;

typedef struct _SID_AND_ATTRIBUTES {
    PSID Sid;
    DWORD Attributes;
    } SID_AND_ATTRIBUTES, * PSID_AND_ATTRIBUTES;

typedef SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[1];
typedef SID_AND_ATTRIBUTES_ARRAY *PSID_AND_ATTRIBUTES_ARRAY;






















































































































































































































typedef struct _ACL {
    BYTE  AclRevision;
    BYTE  Sbz1;
    WORD   AclSize;
    WORD   AceCount;
    WORD   Sbz2;
} ACL;
typedef ACL *PACL;





















typedef struct _ACE_HEADER {
    BYTE  AceType;
    BYTE  AceFlags;
    WORD   AceSize;
} ACE_HEADER;
typedef ACE_HEADER *PACE_HEADER;




























































































typedef struct _ACCESS_ALLOWED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_ALLOWED_ACE;

typedef ACCESS_ALLOWED_ACE *PACCESS_ALLOWED_ACE;

typedef struct _ACCESS_DENIED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_DENIED_ACE;
typedef ACCESS_DENIED_ACE *PACCESS_DENIED_ACE;

typedef struct _SYSTEM_AUDIT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_AUDIT_ACE;
typedef SYSTEM_AUDIT_ACE *PSYSTEM_AUDIT_ACE;

typedef struct _SYSTEM_ALARM_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_ALARM_ACE;
typedef SYSTEM_ALARM_ACE *PSYSTEM_ALARM_ACE;




typedef struct _ACCESS_ALLOWED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_ALLOWED_OBJECT_ACE, *PACCESS_ALLOWED_OBJECT_ACE;

typedef struct _ACCESS_DENIED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_DENIED_OBJECT_ACE, *PACCESS_DENIED_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_AUDIT_OBJECT_ACE, *PSYSTEM_AUDIT_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_ALARM_OBJECT_ACE, *PSYSTEM_ALARM_OBJECT_ACE;















typedef enum _ACL_INFORMATION_CLASS {
    AclRevisionInformation = 1,
    AclSizeInformation
} ACL_INFORMATION_CLASS;






typedef struct _ACL_REVISION_INFORMATION {
    DWORD AclRevision;
} ACL_REVISION_INFORMATION;
typedef ACL_REVISION_INFORMATION *PACL_REVISION_INFORMATION;





typedef struct _ACL_SIZE_INFORMATION {
    DWORD AceCount;
    DWORD AclBytesInUse;
    DWORD AclBytesFree;
} ACL_SIZE_INFORMATION;
typedef ACL_SIZE_INFORMATION *PACL_SIZE_INFORMATION;


























typedef WORD   SECURITY_DESCRIPTOR_CONTROL, *PSECURITY_DESCRIPTOR_CONTROL;
























































































typedef struct _SECURITY_DESCRIPTOR_RELATIVE {
    BYTE  Revision;
    BYTE  Sbz1;
    SECURITY_DESCRIPTOR_CONTROL Control;
    DWORD Owner;
    DWORD Group;
    DWORD Sacl;
    DWORD Dacl;
    } SECURITY_DESCRIPTOR_RELATIVE, *PISECURITY_DESCRIPTOR_RELATIVE;

typedef struct _SECURITY_DESCRIPTOR {
   BYTE  Revision;
   BYTE  Sbz1;
   SECURITY_DESCRIPTOR_CONTROL Control;
   PSID Owner;
   PSID Group;
   PACL Sacl;
   PACL Dacl;

   } SECURITY_DESCRIPTOR, *PISECURITY_DESCRIPTOR;

















































typedef struct _OBJECT_TYPE_LIST {
    WORD   Level;
    WORD   Sbz;
    GUID *ObjectType;
} OBJECT_TYPE_LIST, *POBJECT_TYPE_LIST;















typedef enum _AUDIT_EVENT_TYPE {
    AuditEventObjectAccess,
    AuditEventDirectoryServiceAccess
} AUDIT_EVENT_TYPE, *PAUDIT_EVENT_TYPE;













































typedef struct _PRIVILEGE_SET {
    DWORD PrivilegeCount;
    DWORD Control;
    LUID_AND_ATTRIBUTES Privilege[1];
    } PRIVILEGE_SET, * PPRIVILEGE_SET;


















































typedef enum _SECURITY_IMPERSONATION_LEVEL {
    SecurityAnonymous,
    SecurityIdentification,
    SecurityImpersonation,
    SecurityDelegation
    } SECURITY_IMPERSONATION_LEVEL, * PSECURITY_IMPERSONATION_LEVEL;

























































typedef enum _TOKEN_TYPE {
    TokenPrimary = 1,
    TokenImpersonation
    } TOKEN_TYPE;
typedef TOKEN_TYPE *PTOKEN_TYPE;







typedef enum _TOKEN_INFORMATION_CLASS {
    TokenUser = 1,
    TokenGroups,
    TokenPrivileges,
    TokenOwner,
    TokenPrimaryGroup,
    TokenDefaultDacl,
    TokenSource,
    TokenType,
    TokenImpersonationLevel,
    TokenStatistics,
    TokenRestrictedSids,
    TokenSessionId
} TOKEN_INFORMATION_CLASS, *PTOKEN_INFORMATION_CLASS;






typedef struct _TOKEN_USER {
    SID_AND_ATTRIBUTES User;
} TOKEN_USER, *PTOKEN_USER;

typedef struct _TOKEN_GROUPS {
    DWORD GroupCount;
    SID_AND_ATTRIBUTES Groups[1];
} TOKEN_GROUPS, *PTOKEN_GROUPS;


typedef struct _TOKEN_PRIVILEGES {
    DWORD PrivilegeCount;
    LUID_AND_ATTRIBUTES Privileges[1];
} TOKEN_PRIVILEGES, *PTOKEN_PRIVILEGES;


typedef struct _TOKEN_OWNER {
    PSID Owner;
} TOKEN_OWNER, *PTOKEN_OWNER;


typedef struct _TOKEN_PRIMARY_GROUP {
    PSID PrimaryGroup;
} TOKEN_PRIMARY_GROUP, *PTOKEN_PRIMARY_GROUP;


typedef struct _TOKEN_DEFAULT_DACL {
    PACL DefaultDacl;
} TOKEN_DEFAULT_DACL, *PTOKEN_DEFAULT_DACL;





typedef struct _TOKEN_SOURCE {
    CHAR SourceName[8];
    LUID SourceIdentifier;
} TOKEN_SOURCE, *PTOKEN_SOURCE;


typedef struct _TOKEN_STATISTICS {
    LUID TokenId;
    LUID AuthenticationId;
    LARGE_INTEGER ExpirationTime;
    TOKEN_TYPE TokenType;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    DWORD DynamicCharged;
    DWORD DynamicAvailable;
    DWORD GroupCount;
    DWORD PrivilegeCount;
    LUID ModifiedId;
} TOKEN_STATISTICS, *PTOKEN_STATISTICS;



typedef struct _TOKEN_CONTROL {
    LUID TokenId;
    LUID AuthenticationId;
    LUID ModifiedId;
    TOKEN_SOURCE TokenSource;
    } TOKEN_CONTROL, *PTOKEN_CONTROL;








typedef BOOLEAN SECURITY_CONTEXT_TRACKING_MODE,
                    * PSECURITY_CONTEXT_TRACKING_MODE;







typedef struct _SECURITY_QUALITY_OF_SERVICE {
    DWORD Length;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
    BOOLEAN EffectiveOnly;
    } SECURITY_QUALITY_OF_SERVICE, * PSECURITY_QUALITY_OF_SERVICE;






typedef struct _SE_IMPERSONATION_STATE {
    PACCESS_TOKEN Token;
    BOOLEAN CopyOnOpen;
    BOOLEAN EffectiveOnly;
    SECURITY_IMPERSONATION_LEVEL Level;
} SE_IMPERSONATION_STATE, *PSE_IMPERSONATION_STATE;


typedef DWORD SECURITY_INFORMATION, *PSECURITY_INFORMATION;















































typedef struct _NT_TIB {
    struct _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;
    union {
        PVOID FiberData;
        DWORD Version;
    };
    PVOID ArbitraryUserPointer;
    struct _NT_TIB *Self;
} NT_TIB;
typedef NT_TIB *PNT_TIB;



#line 4366 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"






typedef struct _QUOTA_LIMITS {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    DWORD MinimumWorkingSetSize;
    DWORD MaximumWorkingSetSize;
    SIZE_T PagefileLimit;
    LARGE_INTEGER TimeLimit;
} QUOTA_LIMITS;
typedef QUOTA_LIMITS *PQUOTA_LIMITS;



typedef struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
    LARGE_INTEGER TotalUserTime;
    LARGE_INTEGER TotalKernelTime;
    LARGE_INTEGER ThisPeriodTotalUserTime;
    LARGE_INTEGER ThisPeriodTotalKernelTime;
    DWORD TotalPageFaultCount;
    DWORD TotalProcesses;
    DWORD ActiveProcesses;
    DWORD TotalTerminatedProcesses;
} JOBOBJECT_BASIC_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
    LARGE_INTEGER PerProcessUserTimeLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD LimitFlags;
    DWORD MinimumWorkingSetSize;
    DWORD MaximumWorkingSetSize;
    DWORD ActiveProcessLimit;
    DWORD Affinity;
    DWORD PriorityClass;
} JOBOBJECT_BASIC_LIMIT_INFORMATION, *PJOBOBJECT_BASIC_LIMIT_INFORMATION;

typedef struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
    DWORD NumberOfAssignedProcesses;
    DWORD NumberOfProcessIdsInList;
    UINT_PTR ProcessIdList[1];
} JOBOBJECT_BASIC_PROCESS_ID_LIST, *PJOBOBJECT_BASIC_PROCESS_ID_LIST;

typedef struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
    DWORD UIRestrictionsClass;
} JOBOBJECT_BASIC_UI_RESTRICTIONS, *PJOBOBJECT_BASIC_UI_RESTRICTIONS;

typedef struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
    DWORD SecurityLimitFlags ;
    HANDLE JobToken ;
    PTOKEN_GROUPS SidsToDisable ;
    PTOKEN_PRIVILEGES PrivilegesToDelete ;
    PTOKEN_GROUPS RestrictedSids ;
} JOBOBJECT_SECURITY_LIMIT_INFORMATION, *PJOBOBJECT_SECURITY_LIMIT_INFORMATION ;

typedef struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
    DWORD EndOfJobTimeAction;
} JOBOBJECT_END_OF_JOB_TIME_INFORMATION, *PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

typedef struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
    PVOID CompletionKey;
    HANDLE CompletionPort;
} JOBOBJECT_ASSOCIATE_COMPLETION_PORT, *PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;




















































typedef enum _JOBOBJECTINFOCLASS {
    JobObjectBasicAccountingInformation = 1,
    JobObjectBasicLimitInformation,
    JobObjectBasicProcessIdList,
    JobObjectBasicUIRestrictions,
    JobObjectSecurityLimitInformation,
    JobObjectEndOfJobTimeInformation,
    JobObjectAssociateCompletionPortInformation,
    MaxJobObjectInfoClass
    } JOBOBJECTINFOCLASS;

































































typedef struct _MEMORY_BASIC_INFORMATION {
    PVOID BaseAddress;
    PVOID AllocationBase;
    DWORD AllocationProtect;
    SIZE_T RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION, *PMEMORY_BASIC_INFORMATION;

typedef struct _MEMORY_BASIC_INFORMATION_VLM {
    union {
        PVOID64 BaseAddress;
        ULONGLONG BaseAddressAsUlongLong;
    };
    union {
        PVOID64 AllocationBase;
        ULONGLONG AllocationBaseAsUlongLong;
    };
    ULONGLONG RegionSize;
    DWORD AllocationProtect;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION_VLM, *PMEMORY_BASIC_INFORMATION_VLM;


















































































































































typedef struct _FILE_NOTIFY_INFORMATION {
    DWORD NextEntryOffset;
    DWORD Action;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FILE_NOTIFY_INFORMATION, *PFILE_NOTIFY_INFORMATION;






typedef union _FILE_SEGMENT_ELEMENT {
    PVOID64 Buffer;
    ULONGLONG Alignment;
}FILE_SEGMENT_ELEMENT, *PFILE_SEGMENT_ELEMENT;











typedef struct _REPARSE_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    union {
        struct {
            WORD   SubstituteNameOffset;
            WORD   SubstituteNameLength;
            WORD   PrintNameOffset;
            WORD   PrintNameLength;
            WCHAR PathBuffer[1];
        } SymbolicLinkReparseBuffer;
        struct {
            WORD   SubstituteNameOffset;
            WORD   SubstituteNameLength;
            WORD   PrintNameOffset;
            WORD   PrintNameLength;
            WCHAR PathBuffer[1];
        } MountPointReparseBuffer;
        struct {
            BYTE   DataBuffer[1];
        } GenericReparseBuffer;
    };
} REPARSE_DATA_BUFFER, *PREPARSE_DATA_BUFFER;












typedef struct _REPARSE_GUID_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    GUID   ReparseGuid;
    struct {
        BYTE   DataBuffer[1];
    } GenericReparseBuffer;
} REPARSE_GUID_DATA_BUFFER, *PREPARSE_GUID_DATA_BUFFER;









typedef struct _REPARSE_POINT_INFORMATION {
    WORD   ReparseDataLength;
    WORD   UnparsedNameLength;
} REPARSE_POINT_INFORMATION, *PREPARSE_POINT_INFORMATION;
















































































































typedef DWORD EXECUTION_STATE;

typedef enum {
    LT_DONT_CARE,
    LT_LOWEST_LATENCY
} LATENCY_TIME;


typedef struct _POWER_DEVICE_TIMEOUTS {
    DWORD   ConservationIdleTime;
    DWORD   PerformanceIdleTime;
} POWER_DEVICE_TIMEOUTS, *PPOWER_DEVICE_TIMEOUTS;










#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 4950 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"







#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 4958 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"









#line 4968 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_DOS_HEADER {      
    WORD   e_magic;                     
    WORD   e_cblp;                      
    WORD   e_cp;                        
    WORD   e_crlc;                      
    WORD   e_cparhdr;                   
    WORD   e_minalloc;                  
    WORD   e_maxalloc;                  
    WORD   e_ss;                        
    WORD   e_sp;                        
    WORD   e_csum;                      
    WORD   e_ip;                        
    WORD   e_cs;                        
    WORD   e_lfarlc;                    
    WORD   e_ovno;                      
    WORD   e_res[4];                    
    WORD   e_oemid;                     
    WORD   e_oeminfo;                   
    WORD   e_res2[10];                  
    LONG   e_lfanew;                    
  } IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER;

typedef struct _IMAGE_OS2_HEADER {      
    WORD   ne_magic;                    
    CHAR   ne_ver;                      
    CHAR   ne_rev;                      
    WORD   ne_enttab;                   
    WORD   ne_cbenttab;                 
    LONG   ne_crc;                      
    WORD   ne_flags;                    
    WORD   ne_autodata;                 
    WORD   ne_heap;                     
    WORD   ne_stack;                    
    LONG   ne_csip;                     
    LONG   ne_sssp;                     
    WORD   ne_cseg;                     
    WORD   ne_cmod;                     
    WORD   ne_cbnrestab;                
    WORD   ne_segtab;                   
    WORD   ne_rsrctab;                  
    WORD   ne_restab;                   
    WORD   ne_modtab;                   
    WORD   ne_imptab;                   
    LONG   ne_nrestab;                  
    WORD   ne_cmovent;                  
    WORD   ne_align;                    
    WORD   ne_cres;                     
    BYTE   ne_exetyp;                   
    BYTE   ne_flagsothers;              
    WORD   ne_pretthunks;               
    WORD   ne_psegrefbytes;             
    WORD   ne_swaparea;                 
    WORD   ne_expver;                   
  } IMAGE_OS2_HEADER, *PIMAGE_OS2_HEADER;

typedef struct _IMAGE_VXD_HEADER {      
    WORD   e32_magic;                   
    BYTE   e32_border;                  
    BYTE   e32_worder;                  
    DWORD  e32_level;                   
    WORD   e32_cpu;                     
    WORD   e32_os;                      
    DWORD  e32_ver;                     
    DWORD  e32_mflags;                  
    DWORD  e32_mpages;                  
    DWORD  e32_startobj;                
    DWORD  e32_eip;                     
    DWORD  e32_stackobj;                
    DWORD  e32_esp;                     
    DWORD  e32_pagesize;                
    DWORD  e32_lastpagesize;            
    DWORD  e32_fixupsize;               
    DWORD  e32_fixupsum;                
    DWORD  e32_ldrsize;                 
    DWORD  e32_ldrsum;                  
    DWORD  e32_objtab;                  
    DWORD  e32_objcnt;                  
    DWORD  e32_objmap;                  
    DWORD  e32_itermap;                 
    DWORD  e32_rsrctab;                 
    DWORD  e32_rsrccnt;                 
    DWORD  e32_restab;                  
    DWORD  e32_enttab;                  
    DWORD  e32_dirtab;                  
    DWORD  e32_dircnt;                  
    DWORD  e32_fpagetab;                
    DWORD  e32_frectab;                 
    DWORD  e32_impmod;                  
    DWORD  e32_impmodcnt;               
    DWORD  e32_impproc;                 
    DWORD  e32_pagesum;                 
    DWORD  e32_datapage;                
    DWORD  e32_preload;                 
    DWORD  e32_nrestab;                 
    DWORD  e32_cbnrestab;               
    DWORD  e32_nressum;                 
    DWORD  e32_autodata;                
    DWORD  e32_debuginfo;               
    DWORD  e32_debuglen;                
    DWORD  e32_instpreload;             
    DWORD  e32_instdemand;              
    DWORD  e32_heapsize;                
    BYTE   e32_res3[12];                
    DWORD  e32_winresoff;
    DWORD  e32_winreslen;
    WORD   e32_devid;                   
    WORD   e32_ddkver;                  
  } IMAGE_VXD_HEADER, *PIMAGE_VXD_HEADER;


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 5080 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 5081 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef struct _IMAGE_FILE_HEADER {
    WORD    Machine;
    WORD    NumberOfSections;
    DWORD   TimeDateStamp;
    DWORD   PointerToSymbolTable;
    DWORD   NumberOfSymbols;
    WORD    SizeOfOptionalHeader;
    WORD    Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;












































typedef struct _IMAGE_DATA_DIRECTORY {
    DWORD   VirtualAddress;
    DWORD   Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;







typedef struct _IMAGE_OPTIONAL_HEADER {
    
    
    

    WORD    Magic;
    BYTE    MajorLinkerVersion;
    BYTE    MinorLinkerVersion;
    DWORD   SizeOfCode;
    DWORD   SizeOfInitializedData;
    DWORD   SizeOfUninitializedData;
    DWORD   AddressOfEntryPoint;
    DWORD   BaseOfCode;
    DWORD   BaseOfData;

    
    
    

    DWORD   ImageBase;
    DWORD   SectionAlignment;
    DWORD   FileAlignment;
    WORD    MajorOperatingSystemVersion;
    WORD    MinorOperatingSystemVersion;
    WORD    MajorImageVersion;
    WORD    MinorImageVersion;
    WORD    MajorSubsystemVersion;
    WORD    MinorSubsystemVersion;
    DWORD   Win32VersionValue;
    DWORD   SizeOfImage;
    DWORD   SizeOfHeaders;
    DWORD   CheckSum;
    WORD    Subsystem;
    WORD    DllCharacteristics;
    DWORD   SizeOfStackReserve;
    DWORD   SizeOfStackCommit;
    DWORD   SizeOfHeapReserve;
    DWORD   SizeOfHeapCommit;
    DWORD   LoaderFlags;
    DWORD   NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER32, *PIMAGE_OPTIONAL_HEADER32;

typedef struct _IMAGE_ROM_OPTIONAL_HEADER {
    WORD   Magic;
    BYTE   MajorLinkerVersion;
    BYTE   MinorLinkerVersion;
    DWORD  SizeOfCode;
    DWORD  SizeOfInitializedData;
    DWORD  SizeOfUninitializedData;
    DWORD  AddressOfEntryPoint;
    DWORD  BaseOfCode;
    DWORD  BaseOfData;
    DWORD  BaseOfBss;
    DWORD  GprMask;
    DWORD  CprMask[4];
    DWORD  GpValue;
} IMAGE_ROM_OPTIONAL_HEADER, *PIMAGE_ROM_OPTIONAL_HEADER;

typedef struct _IMAGE_OPTIONAL_HEADER64 {
    WORD        Magic;
    BYTE        MajorLinkerVersion;
    BYTE        MinorLinkerVersion;
    DWORD       SizeOfCode;
    DWORD       SizeOfInitializedData;
    DWORD       SizeOfUninitializedData;
    DWORD       AddressOfEntryPoint;
    DWORD       BaseOfCode;
    ULONGLONG   ImageBase;
    DWORD       SectionAlignment;
    DWORD       FileAlignment;
    WORD        MajorOperatingSystemVersion;
    WORD        MinorOperatingSystemVersion;
    WORD        MajorImageVersion;
    WORD        MinorImageVersion;
    WORD        MajorSubsystemVersion;
    WORD        MinorSubsystemVersion;
    DWORD       Win32VersionValue;
    DWORD       SizeOfImage;
    DWORD       SizeOfHeaders;
    DWORD       CheckSum;
    WORD        Subsystem;
    WORD        DllCharacteristics;
    ULONGLONG   SizeOfStackReserve;
    ULONGLONG   SizeOfStackCommit;
    ULONGLONG   SizeOfHeapReserve;
    ULONGLONG   SizeOfHeapCommit;
    DWORD       LoaderFlags;
    DWORD       NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;
















typedef IMAGE_OPTIONAL_HEADER32             IMAGE_OPTIONAL_HEADER;
typedef PIMAGE_OPTIONAL_HEADER32            PIMAGE_OPTIONAL_HEADER;


#line 5262 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;

typedef struct _IMAGE_NT_HEADERS {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER32 OptionalHeader;
} IMAGE_NT_HEADERS32, *PIMAGE_NT_HEADERS32;

typedef struct _IMAGE_ROM_HEADERS {
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
} IMAGE_ROM_HEADERS, *PIMAGE_ROM_HEADERS;


















typedef IMAGE_NT_HEADERS32                  IMAGE_NT_HEADERS;
typedef PIMAGE_NT_HEADERS32                 PIMAGE_NT_HEADERS;

#line 5301 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"














































typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[8];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData;
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;
































































#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 5427 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 5428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef struct _IMAGE_SYMBOL {
    union {
        BYTE    ShortName[8];
        struct {
            DWORD   Short;     
            DWORD   Long;      
        } Name;
        PBYTE   LongName[2];
    } N;
    DWORD   Value;
    SHORT   SectionNumber;
    WORD    Type;
    BYTE    StorageClass;
    BYTE    NumberOfAuxSymbols;
} IMAGE_SYMBOL;
typedef IMAGE_SYMBOL  *PIMAGE_SYMBOL;































































































#line 5545 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




#line 5550 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





#line 5556 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"




#line 5561 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



#line 5565 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"


#line 5568 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef union _IMAGE_AUX_SYMBOL {
    struct {
        DWORD    TagIndex;                      
        union {
            struct {
                WORD    Linenumber;             
                WORD    Size;                   
            } LnSz;
           DWORD    TotalSize;
        } Misc;
        union {
            struct {                            
                DWORD    PointerToLinenumber;
                DWORD    PointerToNextFunction;
            } Function;
            struct {                            
                WORD     Dimension[4];
            } Array;
        } FcnAry;
        WORD    TvIndex;                        
    } Sym;
    struct {
        BYTE    Name[18];
    } File;
    struct {
        DWORD   Length;                         
        WORD    NumberOfRelocations;            
        WORD    NumberOfLinenumbers;            
        DWORD   CheckSum;                       
        SHORT   Number;                         
        BYTE    Selection;                      
    } Section;
} IMAGE_AUX_SYMBOL;
typedef IMAGE_AUX_SYMBOL  *PIMAGE_AUX_SYMBOL;























typedef struct _IMAGE_RELOCATION {
    union {
        DWORD   VirtualAddress;
        DWORD   RelocCount;             
    };
    DWORD   SymbolTableIndex;
    WORD    Type;
} IMAGE_RELOCATION;
typedef IMAGE_RELOCATION  *PIMAGE_RELOCATION;




















































































































































































































typedef struct _IMAGE_LINENUMBER {
    union {
        DWORD   SymbolTableIndex;               
        DWORD   VirtualAddress;                 
    } Type;
    WORD    Linenumber;                         
} IMAGE_LINENUMBER;
typedef IMAGE_LINENUMBER  *PIMAGE_LINENUMBER;




#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 5864 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 5865 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef struct _IMAGE_BASE_RELOCATION {
    DWORD   VirtualAddress;
    DWORD   SizeOfBlock;

} IMAGE_BASE_RELOCATION;
typedef IMAGE_BASE_RELOCATION  * PIMAGE_BASE_RELOCATION;

































typedef struct _IMAGE_ARCHIVE_MEMBER_HEADER {
    BYTE     Name[16];                          
    BYTE     Date[12];                          
    BYTE     UserID[6];                         
    BYTE     GroupID[6];                        
    BYTE     Mode[8];                           
    BYTE     Size[10];                          
    BYTE     EndHeader[2];                      
} IMAGE_ARCHIVE_MEMBER_HEADER, *PIMAGE_ARCHIVE_MEMBER_HEADER;











typedef struct _IMAGE_EXPORT_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Name;
    DWORD   Base;
    DWORD   NumberOfFunctions;
    DWORD   NumberOfNames;
    DWORD   AddressOfFunctions;     
    DWORD   AddressOfNames;         
    DWORD   AddressOfNameOrdinals;  
} IMAGE_EXPORT_DIRECTORY, *PIMAGE_EXPORT_DIRECTORY;





typedef struct _IMAGE_IMPORT_BY_NAME {
    WORD    Hint;
    BYTE    Name[1];
} IMAGE_IMPORT_BY_NAME, *PIMAGE_IMPORT_BY_NAME;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#pragma pack(8)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 5953 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_THUNK_DATA64 {
    union {
        PBYTE  ForwarderString;
        PDWORD Function;
        ULONGLONG Ordinal;
        PIMAGE_IMPORT_BY_NAME  AddressOfData;
    } u1;
} IMAGE_THUNK_DATA64;
typedef IMAGE_THUNK_DATA64 * PIMAGE_THUNK_DATA64;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 5965 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_THUNK_DATA32 {
    union {
        PBYTE  ForwarderString;
        PDWORD Function;
        DWORD Ordinal;
        PIMAGE_IMPORT_BY_NAME  AddressOfData;
    } u1;
} IMAGE_THUNK_DATA32;
typedef IMAGE_THUNK_DATA32 * PIMAGE_THUNK_DATA32;












typedef void
(__stdcall *PIMAGE_TLS_CALLBACK) (
    PVOID DllHandle,
    DWORD Reason,
    PVOID Reserved
    );

typedef struct _IMAGE_TLS_DIRECTORY64 {
    ULONGLONG   StartAddressOfRawData;
    ULONGLONG   EndAddressOfRawData;
    PDWORD  AddressOfIndex;
    PIMAGE_TLS_CALLBACK *AddressOfCallBacks;
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY64;
typedef IMAGE_TLS_DIRECTORY64 * PIMAGE_TLS_DIRECTORY64;

typedef struct _IMAGE_TLS_DIRECTORY32 {
    DWORD   StartAddressOfRawData;
    DWORD   EndAddressOfRawData;
    PDWORD  AddressOfIndex;
    PIMAGE_TLS_CALLBACK *AddressOfCallBacks;
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY32;
typedef IMAGE_TLS_DIRECTORY32 * PIMAGE_TLS_DIRECTORY32;












typedef IMAGE_THUNK_DATA32              IMAGE_THUNK_DATA;
typedef PIMAGE_THUNK_DATA32             PIMAGE_THUNK_DATA;

typedef IMAGE_TLS_DIRECTORY32           IMAGE_TLS_DIRECTORY;
typedef PIMAGE_TLS_DIRECTORY32          PIMAGE_TLS_DIRECTORY;
#line 6031 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_IMPORT_DESCRIPTOR {
    union {
        DWORD   Characteristics;            
        DWORD   OriginalFirstThunk;         
    };
    DWORD   TimeDateStamp;                  
                                            
                                            
                                            

    DWORD   ForwarderChain;                 
    DWORD   Name;
    DWORD   FirstThunk;                     
} IMAGE_IMPORT_DESCRIPTOR;
typedef IMAGE_IMPORT_DESCRIPTOR  *PIMAGE_IMPORT_DESCRIPTOR;





typedef struct _IMAGE_BOUND_IMPORT_DESCRIPTOR {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    NumberOfModuleForwarderRefs;

} IMAGE_BOUND_IMPORT_DESCRIPTOR,  *PIMAGE_BOUND_IMPORT_DESCRIPTOR;

typedef struct _IMAGE_BOUND_FORWARDER_REF {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    Reserved;
} IMAGE_BOUND_FORWARDER_REF, *PIMAGE_BOUND_FORWARDER_REF;


































typedef struct _IMAGE_RESOURCE_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    WORD    NumberOfNamedEntries;
    WORD    NumberOfIdEntries;

} IMAGE_RESOURCE_DIRECTORY, *PIMAGE_RESOURCE_DIRECTORY;


















typedef struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
    union {
        struct {
            DWORD NameOffset:31;
            DWORD NameIsString:1;
        };
        DWORD   Name;
        WORD    Id;
    };
    union {
        DWORD   OffsetToData;
        struct {
            DWORD   OffsetToDirectory:31;
            DWORD   DataIsDirectory:1;
        };
    };
} IMAGE_RESOURCE_DIRECTORY_ENTRY, *PIMAGE_RESOURCE_DIRECTORY_ENTRY;










typedef struct _IMAGE_RESOURCE_DIRECTORY_STRING {
    WORD    Length;
    CHAR    NameString[ 1 ];
} IMAGE_RESOURCE_DIRECTORY_STRING, *PIMAGE_RESOURCE_DIRECTORY_STRING;


typedef struct _IMAGE_RESOURCE_DIR_STRING_U {
    WORD    Length;
    WCHAR   NameString[ 1 ];
} IMAGE_RESOURCE_DIR_STRING_U, *PIMAGE_RESOURCE_DIR_STRING_U;











typedef struct _IMAGE_RESOURCE_DATA_ENTRY {
    DWORD   OffsetToData;
    DWORD   Size;
    DWORD   CodePage;
    DWORD   Reserved;
} IMAGE_RESOURCE_DATA_ENTRY, *PIMAGE_RESOURCE_DATA_ENTRY;





typedef struct _IMAGE_LOAD_CONFIG_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   GlobalFlagsClear;
    DWORD   GlobalFlagsSet;
    DWORD   CriticalSectionDefaultTimeout;
    DWORD   DeCommitFreeBlockThreshold;
    DWORD   DeCommitTotalFreeThreshold;
    PVOID   LockPrefixTable;
    DWORD   MaximumAllocationSize;
    DWORD   VirtualMemoryThreshold;
    DWORD   ProcessHeapFlags;
    DWORD   ProcessAffinityMask;
    WORD    CSDVersion;
    WORD    Reserved1;
    PVOID   EditList;
    DWORD   Reserved[ 1 ];
} IMAGE_LOAD_CONFIG_DIRECTORY, *PIMAGE_LOAD_CONFIG_DIRECTORY;









typedef struct _IMAGE_IA64_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD UnwindInfoAddress;
} IMAGE_IA64_RUNTIME_FUNCTION_ENTRY, *PIMAGE_IA64_RUNTIME_FUNCTION_ENTRY;








typedef struct _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD ExceptionHandler;
    DWORD HandlerData;
    DWORD PrologEndAddress;
} IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;

typedef struct _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY {
    ULONGLONG BeginAddress;
    ULONGLONG EndAddress;
    ULONGLONG ExceptionHandler;
    ULONGLONG HandlerData;
    ULONGLONG PrologEndAddress;
} IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;

typedef  IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY  IMAGE_AXP64_RUNTIME_FUNCTION_ENTRY;
typedef PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY PIMAGE_AXP64_RUNTIME_FUNCTION_ENTRY;





typedef struct _IMAGE_CE_RUNTIME_FUNCTION_ENTRY {
    DWORD FuncStart;
    DWORD PrologLen : 8;
    DWORD FuncLen : 22;
    DWORD ThirtyTwoBit : 1;
    DWORD ExceptionFlag : 1;
} IMAGE_CE_RUNTIME_FUNCTION_ENTRY, * PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;






#line 6263 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef  IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY  IMAGE_RUNTIME_FUNCTION_ENTRY;
typedef PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY PIMAGE_RUNTIME_FUNCTION_ENTRY;

#line 6268 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"





typedef struct _IMAGE_DEBUG_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Type;
    DWORD   SizeOfData;
    DWORD   AddressOfRawData;
    DWORD   PointerToRawData;
} IMAGE_DEBUG_DIRECTORY, *PIMAGE_DEBUG_DIRECTORY;














typedef struct _IMAGE_COFF_SYMBOLS_HEADER {
    DWORD   NumberOfSymbols;
    DWORD   LvaToFirstSymbol;
    DWORD   NumberOfLinenumbers;
    DWORD   LvaToFirstLinenumber;
    DWORD   RvaToFirstByteOfCode;
    DWORD   RvaToLastByteOfCode;
    DWORD   RvaToFirstByteOfData;
    DWORD   RvaToLastByteOfData;
} IMAGE_COFF_SYMBOLS_HEADER, *PIMAGE_COFF_SYMBOLS_HEADER;






typedef struct _FPO_DATA {
    DWORD       ulOffStart;             
    DWORD       cbProcSize;             
    DWORD       cdwLocals;              
    WORD        cdwParams;              
    WORD        cbProlog : 8;           
    WORD        cbRegs   : 3;           
    WORD        fHasSEH  : 1;           
    WORD        fUseBP   : 1;           
    WORD        reserved : 1;           
    WORD        cbFrame  : 2;           
} FPO_DATA, *PFPO_DATA;





typedef struct _IMAGE_DEBUG_MISC {
    DWORD       DataType;               
    DWORD       Length;                 
                                        
    BOOLEAN     Unicode;                
    BYTE        Reserved[ 3 ];
    BYTE        Data[ 1 ];              
} IMAGE_DEBUG_MISC, *PIMAGE_DEBUG_MISC;
















#line 6355 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _IMAGE_FUNCTION_ENTRY {
    DWORD   StartingAddress;
    DWORD   EndingAddress;
    DWORD   EndOfPrologue;
} IMAGE_FUNCTION_ENTRY, *PIMAGE_FUNCTION_ENTRY;

#line 6363 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
typedef struct _IMAGE_FUNCTION_ENTRY64 {
    ULONGLONG   StartingAddress;
    ULONGLONG   EndingAddress;
    ULONGLONG   EndOfPrologue;
} IMAGE_FUNCTION_ENTRY64, *PIMAGE_FUNCTION_ENTRY64;





















typedef struct _IMAGE_SEPARATE_DEBUG_HEADER {
    WORD        Signature;
    WORD        Flags;
    WORD        Machine;
    WORD        Characteristics;
    DWORD       TimeDateStamp;
    DWORD       CheckSum;
    DWORD       ImageBase;
    DWORD       SizeOfImage;
    DWORD       NumberOfSections;
    DWORD       ExportedNamesSize;
    DWORD       DebugDirectorySize;
    DWORD       SectionAlignment;
    DWORD       Reserved[2];
} IMAGE_SEPARATE_DEBUG_HEADER, *PIMAGE_SEPARATE_DEBUG_HEADER;





#line 6410 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"



                                                









typedef struct _ImageArchitectureHeader {
    unsigned int AmaskValue: 1;                 
                                                
    int :7;                                     
    unsigned int AmaskShift: 8;                 
    int :16;                                    
    DWORD FirstEntryRVA;                        
} IMAGE_ARCHITECTURE_HEADER, *PIMAGE_ARCHITECTURE_HEADER;

typedef struct _ImageArchitectureEntry {
    DWORD FixupInstRVA;                         
    DWORD NewInst;                              
} IMAGE_ARCHITECTURE_ENTRY, *PIMAGE_ARCHITECTURE_ENTRY;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 6438 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"








typedef struct IMPORT_OBJECT_HEADER {
    WORD    Sig1;                       
    WORD    Sig2;                       
    WORD    Version;
    WORD    Machine;
    DWORD   TimeDateStamp;              
    DWORD   SizeOfData;                 

    union {
        WORD    Ordinal;                
        WORD    Hint;
    };

    WORD    Type : 2;                   
    WORD    NameType : 3;               
    WORD    Reserved : 11;              
} IMPORT_OBJECT_HEADER;

typedef enum IMPORT_OBJECT_TYPE
{
    IMPORT_OBJECT_CODE = 0,
    IMPORT_OBJECT_DATA = 1,
    IMPORT_OBJECT_CONST = 2,
} IMPORT_OBJECT_TYPE;

typedef enum IMPORT_OBJECT_NAME_TYPE
{
    IMPORT_OBJECT_ORDINAL = 0,          
    IMPORT_OBJECT_NAME = 1,             
    IMPORT_OBJECT_NAME_NO_PREFIX = 2,   
    IMPORT_OBJECT_NAME_UNDECORATE = 3,  
                                        
} IMPORT_OBJECT_NAME_TYPE;













#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"















#pragma once
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"






#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"



extern "C" {
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"

















#line 48 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"













typedef unsigned int size_t;

#line 64 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"







#line 72 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"




#line 77 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"
























        void *  __cdecl memcpy(void *, const void *, size_t);
        int     __cdecl memcmp(const void *, const void *, size_t);
        void *  __cdecl memset(void *, int, size_t);
        char *  __cdecl _strset(char *, int);
        char *  __cdecl strcpy(char *, const char *);
        char *  __cdecl strcat(char *, const char *);
        int     __cdecl strcmp(const char *, const char *);
        size_t  __cdecl strlen(const char *);
#line 110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"
 void *  __cdecl _memccpy(void *, const void *, int, unsigned int);
 void *  __cdecl memchr(const void *, int, size_t);
 int     __cdecl _memicmp(const void *, const void *, unsigned int);





 void *  __cdecl memmove(void *, const void *, size_t);
#line 120 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"


 char *  __cdecl strchr(const char *, int);
 int     __cdecl _strcmpi(const char *, const char *);
 int     __cdecl _stricmp(const char *, const char *);
 int     __cdecl strcoll(const char *, const char *);
 int     __cdecl _stricoll(const char *, const char *);
 int     __cdecl _strncoll(const char *, const char *, size_t);
 int     __cdecl _strnicoll(const char *, const char *, size_t);
 size_t  __cdecl strcspn(const char *, const char *);
 char *  __cdecl _strdup(const char *);
 char *  __cdecl _strerror(const char *);
 char *  __cdecl strerror(int);
 char *  __cdecl _strlwr(char *);
 char *  __cdecl strncat(char *, const char *, size_t);
 int     __cdecl strncmp(const char *, const char *, size_t);
 int     __cdecl _strnicmp(const char *, const char *, size_t);
 char *  __cdecl strncpy(char *, const char *, size_t);
 char *  __cdecl _strnset(char *, int, size_t);
 char *  __cdecl strpbrk(const char *, const char *);
 char *  __cdecl strrchr(const char *, int);
 char *  __cdecl _strrev(char *);
 size_t  __cdecl strspn(const char *, const char *);
 char *  __cdecl strstr(const char *, const char *);
 char *  __cdecl strtok(char *, const char *);
 char *  __cdecl _strupr(char *);
 size_t  __cdecl strxfrm (char *, const char *, size_t);














 void * __cdecl memccpy(void *, const void *, int, unsigned int);
 int __cdecl memicmp(const void *, const void *, unsigned int);
 int __cdecl strcmpi(const char *, const char *);
 int __cdecl stricmp(const char *, const char *);
 char * __cdecl strdup(const char *);
 char * __cdecl strlwr(char *);
 int __cdecl strnicmp(const char *, const char *, size_t);
 char * __cdecl strnset(char *, int, size_t);
 char * __cdecl strrev(char *);
        char * __cdecl strset(char *, int);
 char * __cdecl strupr(char *);

#line 174 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"







 wchar_t * __cdecl wcscat(wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcschr(const wchar_t *, wchar_t);
 int __cdecl wcscmp(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcscpy(wchar_t *, const wchar_t *);
 size_t __cdecl wcscspn(const wchar_t *, const wchar_t *);
 size_t __cdecl wcslen(const wchar_t *);
 wchar_t * __cdecl wcsncat(wchar_t *, const wchar_t *, size_t);
 int __cdecl wcsncmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcsncpy(wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcspbrk(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcsrchr(const wchar_t *, wchar_t);
 size_t __cdecl wcsspn(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcsstr(const wchar_t *, const wchar_t *);
 wchar_t * __cdecl wcstok(wchar_t *, const wchar_t *);

 wchar_t * __cdecl _wcsdup(const wchar_t *);
 int __cdecl _wcsicmp(const wchar_t *, const wchar_t *);
 int __cdecl _wcsnicmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl _wcsnset(wchar_t *, wchar_t, size_t);
 wchar_t * __cdecl _wcsrev(wchar_t *);
 wchar_t * __cdecl _wcsset(wchar_t *, wchar_t);

 wchar_t * __cdecl _wcslwr(wchar_t *);
 wchar_t * __cdecl _wcsupr(wchar_t *);
 size_t __cdecl wcsxfrm(wchar_t *, const wchar_t *, size_t);
 int __cdecl wcscoll(const wchar_t *, const wchar_t *);
 int __cdecl _wcsicoll(const wchar_t *, const wchar_t *);
 int __cdecl _wcsncoll(const wchar_t *, const wchar_t *, size_t);
 int __cdecl _wcsnicoll(const wchar_t *, const wchar_t *, size_t);







 wchar_t * __cdecl wcsdup(const wchar_t *);
 int __cdecl wcsicmp(const wchar_t *, const wchar_t *);
 int __cdecl wcsnicmp(const wchar_t *, const wchar_t *, size_t);
 wchar_t * __cdecl wcsnset(wchar_t *, wchar_t, size_t);
 wchar_t * __cdecl wcsrev(wchar_t *);
 wchar_t * __cdecl wcsset(wchar_t *, wchar_t);
 wchar_t * __cdecl wcslwr(wchar_t *);
 wchar_t * __cdecl wcsupr(wchar_t *);
 int __cdecl wcsicoll(const wchar_t *, const wchar_t *);

#line 228 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"


#line 231 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"

#line 233 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"


}
#line 237 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"

#line 239 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\string.h"
#line 6493 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 6494 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"












































__declspec(dllimport)
SIZE_T
__stdcall
RtlCompareMemory (
    const void *Source1,
    const void *Source2,
    SIZE_T Length
    );


















































#line 6597 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"







#line 6605 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"






























#line 6636 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

typedef struct _MESSAGE_RESOURCE_ENTRY {
    WORD   Length;
    WORD   Flags;
    BYTE  Text[ 1 ];
} MESSAGE_RESOURCE_ENTRY, *PMESSAGE_RESOURCE_ENTRY;



typedef struct _MESSAGE_RESOURCE_BLOCK {
    DWORD LowId;
    DWORD HighId;
    DWORD OffsetToEntries;
} MESSAGE_RESOURCE_BLOCK, *PMESSAGE_RESOURCE_BLOCK;

typedef struct _MESSAGE_RESOURCE_DATA {
    DWORD NumberOfBlocks;
    MESSAGE_RESOURCE_BLOCK Blocks[ 1 ];
} MESSAGE_RESOURCE_DATA, *PMESSAGE_RESOURCE_DATA;


typedef struct _RTL_CRITICAL_SECTION_DEBUG {
    WORD   Type;
    WORD   CreatorBackTraceIndex;
    struct _RTL_CRITICAL_SECTION *CriticalSection;
    LIST_ENTRY ProcessLocksList;
    DWORD EntryCount;
    DWORD ContentionCount;
    DWORD Spare[ 2 ];
} RTL_CRITICAL_SECTION_DEBUG, *PRTL_CRITICAL_SECTION_DEBUG, RTL_RESOURCE_DEBUG, *PRTL_RESOURCE_DEBUG;




typedef struct _RTL_CRITICAL_SECTION {
    PRTL_CRITICAL_SECTION_DEBUG DebugInfo;

    
    
    
    

    LONG LockCount;
    LONG RecursionCount;
    HANDLE OwningThread;        
    HANDLE LockSemaphore;
    DWORD SpinCount;
} RTL_CRITICAL_SECTION, *PRTL_CRITICAL_SECTION;










typedef void (__stdcall * WAITORTIMERCALLBACKFUNC) (PVOID, BOOLEAN );   
typedef void (__stdcall * WORKERCALLBACKFUNC) (PVOID );                 











































typedef struct _EVENTLOGRECORD {
    DWORD  Length;        
    DWORD  Reserved;      
    DWORD  RecordNumber;  
    DWORD  TimeGenerated; 
    DWORD  TimeWritten;   
    DWORD  EventID;
    WORD   EventType;
    WORD   NumStrings;
    WORD   EventCategory;
    WORD   ReservedFlags; 
    DWORD  ClosingRecordNumber; 
    DWORD  StringOffset;  
    DWORD  UserSidLength;
    DWORD  UserSidOffset;
    DWORD  DataLength;
    DWORD  DataOffset;    
    
    
    
    
    
    
    
    
    
    
    
} EVENTLOGRECORD, *PEVENTLOGRECORD;





#pragma warning(disable : 4200)
typedef struct _EVENTSFORLOGFILE{
	DWORD			ulSize;
    WCHAR   		szLogicalLogFile[256];        
    DWORD			ulNumRecords;
	EVENTLOGRECORD 	pEventLogRecords[];
}EVENTSFORLOGFILE, *PEVENTSFORLOGFILE;

typedef struct _PACKEDEVENTINFO{
    DWORD               ulSize;  
    DWORD               ulNumEventsForLogFile; 
    DWORD 				ulOffsets[];           
}PACKEDEVENTINFO, *PPACKEDEVENTINFO;

#pragma warning(default : 4200)
























































                                                    


                                                    


                                                    


                                                    
                                                    


















































                                            




























































typedef enum _CM_SERVICE_NODE_TYPE {
    DriverType               = 0x00000001,
    FileSystemType           = 0x00000002,
    Win32ServiceOwnProcess   = 0x00000010,
    Win32ServiceShareProcess = 0x00000020,
    AdapterType              = 0x00000004,
    RecognizerType           = 0x00000008
} SERVICE_NODE_TYPE;

typedef enum _CM_SERVICE_LOAD_TYPE {
    BootLoad    = 0x00000000,
    SystemLoad  = 0x00000001,
    AutoLoad    = 0x00000002,
    DemandLoad  = 0x00000003,
    DisableLoad = 0x00000004
} SERVICE_LOAD_TYPE;

typedef enum _CM_ERROR_CONTROL_TYPE {
    IgnoreError   = 0x00000000,
    NormalError   = 0x00000001,
    SevereError   = 0x00000002,
    CriticalError = 0x00000003
} SERVICE_ERROR_TYPE;










typedef struct _TAPE_ERASE {
    DWORD Type;
    BOOLEAN Immediate;
} TAPE_ERASE, *PTAPE_ERASE;












typedef struct _TAPE_PREPARE {
    DWORD Operation;
    BOOLEAN Immediate;
} TAPE_PREPARE, *PTAPE_PREPARE;










typedef struct _TAPE_WRITE_MARKS {
    DWORD Type;
    DWORD Count;
    BOOLEAN Immediate;
} TAPE_WRITE_MARKS, *PTAPE_WRITE_MARKS;









typedef struct _TAPE_GET_POSITION {
    DWORD Type;
    DWORD Partition;
    LARGE_INTEGER Offset;
} TAPE_GET_POSITION, *PTAPE_GET_POSITION;
















typedef struct _TAPE_SET_POSITION {
    DWORD Method;
    DWORD Partition;
    LARGE_INTEGER Offset;
    BOOLEAN Immediate;
} TAPE_SET_POSITION, *PTAPE_SET_POSITION;























































































typedef struct _TAPE_GET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD DefaultBlockSize;
    DWORD MaximumBlockSize;
    DWORD MinimumBlockSize;
    DWORD MaximumPartitionCount;
    DWORD FeaturesLow;
    DWORD FeaturesHigh;
    DWORD EOTWarningZoneSize;
} TAPE_GET_DRIVE_PARAMETERS, *PTAPE_GET_DRIVE_PARAMETERS;





typedef struct _TAPE_SET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD EOTWarningZoneSize;
} TAPE_SET_DRIVE_PARAMETERS, *PTAPE_SET_DRIVE_PARAMETERS;





typedef struct _TAPE_GET_MEDIA_PARAMETERS {
    LARGE_INTEGER Capacity;
    LARGE_INTEGER Remaining;
    DWORD BlockSize;
    DWORD PartitionCount;
    BOOLEAN WriteProtected;
} TAPE_GET_MEDIA_PARAMETERS, *PTAPE_GET_MEDIA_PARAMETERS;





typedef struct _TAPE_SET_MEDIA_PARAMETERS {
    DWORD BlockSize;
} TAPE_SET_MEDIA_PARAMETERS, *PTAPE_SET_MEDIA_PARAMETERS;









typedef struct _TAPE_CREATE_PARTITION {
    DWORD Method;
    DWORD Count;
    DWORD Size;
} TAPE_CREATE_PARTITION, *PTAPE_CREATE_PARTITION;



}
#line 7221 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"

#line 7223 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnt.h"
#line 167 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
#line 168 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"


typedef UINT WPARAM;
typedef LONG LPARAM;
typedef LONG LRESULT;





#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



#line 183 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

#line 185 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"










struct HWND__ { int unused; }; typedef struct HWND__ *HWND;
struct HHOOK__ { int unused; }; typedef struct HHOOK__ *HHOOK;



#line 201 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

typedef WORD                ATOM;

typedef HANDLE          *SPHANDLE;
typedef HANDLE           *LPHANDLE;
typedef HANDLE              HGLOBAL;
typedef HANDLE              HLOCAL;
typedef HANDLE              GLOBALHANDLE;
typedef HANDLE              LOCALHANDLE;

typedef int ( __stdcall *FARPROC)();
typedef int ( __stdcall *NEARPROC)();
typedef int (__stdcall *PROC)();




#line 219 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"



typedef void * HGDIOBJ;


#line 226 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
#line 227 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"


struct HACCEL__ { int unused; }; typedef struct HACCEL__ *HACCEL;
#line 231 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

struct HBITMAP__ { int unused; }; typedef struct HBITMAP__ *HBITMAP;
struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;
#line 235 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

struct HCOLORSPACE__ { int unused; }; typedef struct HCOLORSPACE__ *HCOLORSPACE;
#line 238 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

struct HDC__ { int unused; }; typedef struct HDC__ *HDC;
#line 241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
struct HGLRC__ { int unused; }; typedef struct HGLRC__ *HGLRC;          
struct HDESK__ { int unused; }; typedef struct HDESK__ *HDESK;
struct HENHMETAFILE__ { int unused; }; typedef struct HENHMETAFILE__ *HENHMETAFILE;

struct HFONT__ { int unused; }; typedef struct HFONT__ *HFONT;
#line 247 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
struct HICON__ { int unused; }; typedef struct HICON__ *HICON;

struct HMENU__ { int unused; }; typedef struct HMENU__ *HMENU;
#line 251 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
struct HMETAFILE__ { int unused; }; typedef struct HMETAFILE__ *HMETAFILE;
struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;
typedef HINSTANCE HMODULE;      

struct HPALETTE__ { int unused; }; typedef struct HPALETTE__ *HPALETTE;
struct HPEN__ { int unused; }; typedef struct HPEN__ *HPEN;
#line 258 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
struct HRGN__ { int unused; }; typedef struct HRGN__ *HRGN;
struct HRSRC__ { int unused; }; typedef struct HRSRC__ *HRSRC;
struct HSTR__ { int unused; }; typedef struct HSTR__ *HSTR;
struct HTASK__ { int unused; }; typedef struct HTASK__ *HTASK;
struct HWINSTA__ { int unused; }; typedef struct HWINSTA__ *HWINSTA;
struct HKL__ { int unused; }; typedef struct HKL__ *HKL;







#line 272 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"


typedef int HFILE;
typedef HICON HCURSOR;      



#line 280 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

typedef DWORD   COLORREF;
typedef DWORD   *LPCOLORREF;



typedef struct tagRECT
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECT, *PRECT,  *NPRECT,  *LPRECT;

typedef const RECT * LPCRECT;

typedef struct _RECTL       
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECTL, *PRECTL, *LPRECTL;

typedef const RECTL * LPCRECTL;

typedef struct tagPOINT
{
    LONG  x;
    LONG  y;
} POINT, *PPOINT,  *NPPOINT,  *LPPOINT;

typedef struct _POINTL      
{
    LONG  x;
    LONG  y;
} POINTL, *PPOINTL;

typedef struct tagSIZE
{
    LONG        cx;
    LONG        cy;
} SIZE, *PSIZE, *LPSIZE;

typedef SIZE               SIZEL;
typedef SIZE               *PSIZEL, *LPSIZEL;

typedef struct tagPOINTS
{

    SHORT   x;
    SHORT   y;



#line 336 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"
} POINTS, *PPOINTS, *LPPOINTS;

































}
#line 372 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

#line 374 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windef.h"

#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"























#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





#line 31 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


extern "C" {
#line 41 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



































































#line 109 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"















































#line 157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


























































typedef struct _OVERLAPPED {
    DWORD   Internal;
    DWORD   InternalHigh;
    DWORD   Offset;
    DWORD   OffsetHigh;
    HANDLE  hEvent;
} OVERLAPPED, *LPOVERLAPPED;

typedef struct _SECURITY_ATTRIBUTES {
    DWORD nLength;
    LPVOID lpSecurityDescriptor;
    BOOL bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

typedef struct _PROCESS_INFORMATION {
    HANDLE hProcess;
    HANDLE hThread;
    DWORD dwProcessId;
    DWORD dwThreadId;
} PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;





typedef struct _FILETIME {
    DWORD dwLowDateTime;
    DWORD dwHighDateTime;
} FILETIME, *PFILETIME, *LPFILETIME;





typedef struct _SYSTEMTIME {
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
} SYSTEMTIME, *PSYSTEMTIME, *LPSYSTEMTIME;

typedef DWORD (__stdcall *PTHREAD_START_ROUTINE)(
    LPVOID lpThreadParameter
    );
typedef PTHREAD_START_ROUTINE LPTHREAD_START_ROUTINE;






#line 271 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION PCRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;

typedef RTL_CRITICAL_SECTION_DEBUG CRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG PCRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG LPCRITICAL_SECTION_DEBUG;


typedef PLDT_ENTRY LPLDT_ENTRY;


#line 285 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"









































































































typedef struct _COMMPROP {
    WORD wPacketLength;
    WORD wPacketVersion;
    DWORD dwServiceMask;
    DWORD dwReserved1;
    DWORD dwMaxTxQueue;
    DWORD dwMaxRxQueue;
    DWORD dwMaxBaud;
    DWORD dwProvSubType;
    DWORD dwProvCapabilities;
    DWORD dwSettableParams;
    DWORD dwSettableBaud;
    WORD wSettableData;
    WORD wSettableStopParity;
    DWORD dwCurrentTxQueue;
    DWORD dwCurrentRxQueue;
    DWORD dwProvSpec1;
    DWORD dwProvSpec2;
    WCHAR wcProvChar[1];
} COMMPROP,*LPCOMMPROP;







typedef struct _COMSTAT {
    DWORD fCtsHold : 1;
    DWORD fDsrHold : 1;
    DWORD fRlsdHold : 1;
    DWORD fXoffHold : 1;
    DWORD fXoffSent : 1;
    DWORD fEof : 1;
    DWORD fTxim : 1;
    DWORD fReserved : 25;
    DWORD cbInQue;
    DWORD cbOutQue;
} COMSTAT, *LPCOMSTAT;
















typedef struct _DCB {
    DWORD DCBlength;      
    DWORD BaudRate;       
    DWORD fBinary: 1;     
    DWORD fParity: 1;     
    DWORD fOutxCtsFlow:1; 
    DWORD fOutxDsrFlow:1; 
    DWORD fDtrControl:2;  
    DWORD fDsrSensitivity:1; 
    DWORD fTXContinueOnXoff: 1; 
    DWORD fOutX: 1;       
    DWORD fInX: 1;        
    DWORD fErrorChar: 1;  
    DWORD fNull: 1;       
    DWORD fRtsControl:2;  
    DWORD fAbortOnError:1; 
    DWORD fDummy2:17;     
    WORD wReserved;       
    WORD XonLim;          
    WORD XoffLim;         
    BYTE ByteSize;        
    BYTE Parity;          
    BYTE StopBits;        
    char XonChar;         
    char XoffChar;        
    char ErrorChar;       
    char EofChar;         
    char EvtChar;         
    WORD wReserved1;      
} DCB, *LPDCB;

typedef struct _COMMTIMEOUTS {
    DWORD ReadIntervalTimeout;          
    DWORD ReadTotalTimeoutMultiplier;   
    DWORD ReadTotalTimeoutConstant;     
    DWORD WriteTotalTimeoutMultiplier;  
    DWORD WriteTotalTimeoutConstant;    
} COMMTIMEOUTS,*LPCOMMTIMEOUTS;

typedef struct _COMMCONFIG {
    DWORD dwSize;               
    WORD wVersion;              
    WORD wReserved;             
    DCB dcb;                    
    DWORD dwProviderSubType;    

    DWORD dwProviderOffset;     

    DWORD dwProviderSize;       
    WCHAR wcProviderData[1];    
} COMMCONFIG,*LPCOMMCONFIG;

typedef struct _SYSTEM_INFO {
    union {
        DWORD dwOemId;          
        struct {
            WORD wProcessorArchitecture;
            WORD wReserved;
        };
    };
    DWORD dwPageSize;
    LPVOID lpMinimumApplicationAddress;
    LPVOID lpMaximumApplicationAddress;
    DWORD dwActiveProcessorMask;
    DWORD dwNumberOfProcessors;
    DWORD dwProcessorType;
    DWORD dwAllocationGranularity;
    WORD wProcessorLevel;
    WORD wProcessorRevision;
} SYSTEM_INFO, *LPSYSTEM_INFO;




































typedef struct _MEMORYSTATUS {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    DWORD dwTotalPhys;
    DWORD dwAvailPhys;
    DWORD dwTotalPageFile;
    DWORD dwAvailPageFile;
    DWORD dwTotalVirtual;
    DWORD dwAvailVirtual;
} MEMORYSTATUS, *LPMEMORYSTATUS;















































































typedef struct _EXCEPTION_DEBUG_INFO {
    EXCEPTION_RECORD ExceptionRecord;
    DWORD dwFirstChance;
} EXCEPTION_DEBUG_INFO, *LPEXCEPTION_DEBUG_INFO;

typedef struct _CREATE_THREAD_DEBUG_INFO {
    HANDLE hThread;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
} CREATE_THREAD_DEBUG_INFO, *LPCREATE_THREAD_DEBUG_INFO;

typedef struct _CREATE_PROCESS_DEBUG_INFO {
    HANDLE hFile;
    HANDLE hProcess;
    HANDLE hThread;
    LPVOID lpBaseOfImage;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
    LPVOID lpImageName;
    WORD fUnicode;
} CREATE_PROCESS_DEBUG_INFO, *LPCREATE_PROCESS_DEBUG_INFO;

typedef struct _EXIT_THREAD_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_THREAD_DEBUG_INFO, *LPEXIT_THREAD_DEBUG_INFO;

typedef struct _EXIT_PROCESS_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_PROCESS_DEBUG_INFO, *LPEXIT_PROCESS_DEBUG_INFO;

typedef struct _LOAD_DLL_DEBUG_INFO {
    HANDLE hFile;
    LPVOID lpBaseOfDll;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpImageName;
    WORD fUnicode;
} LOAD_DLL_DEBUG_INFO, *LPLOAD_DLL_DEBUG_INFO;

typedef struct _UNLOAD_DLL_DEBUG_INFO {
    LPVOID lpBaseOfDll;
} UNLOAD_DLL_DEBUG_INFO, *LPUNLOAD_DLL_DEBUG_INFO;

typedef struct _OUTPUT_DEBUG_STRING_INFO {
    LPSTR lpDebugStringData;
    WORD fUnicode;
    WORD nDebugStringLength;
} OUTPUT_DEBUG_STRING_INFO, *LPOUTPUT_DEBUG_STRING_INFO;

typedef struct _RIP_INFO {
    DWORD dwError;
    DWORD dwType;
} RIP_INFO, *LPRIP_INFO;


typedef struct _DEBUG_EVENT {
    DWORD dwDebugEventCode;
    DWORD dwProcessId;
    DWORD dwThreadId;
    union {
        EXCEPTION_DEBUG_INFO Exception;
        CREATE_THREAD_DEBUG_INFO CreateThread;
        CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;
        EXIT_THREAD_DEBUG_INFO ExitThread;
        EXIT_PROCESS_DEBUG_INFO ExitProcess;
        LOAD_DLL_DEBUG_INFO LoadDll;
        UNLOAD_DLL_DEBUG_INFO UnloadDll;
        OUTPUT_DEBUG_STRING_INFO DebugString;
        RIP_INFO RipInfo;
    } u;
} DEBUG_EVENT, *LPDEBUG_EVENT;


typedef PCONTEXT LPCONTEXT;
typedef PEXCEPTION_RECORD LPEXCEPTION_RECORD;
typedef PEXCEPTION_POINTERS LPEXCEPTION_POINTERS;
#line 719 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"














#line 734 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"














































































































































































































typedef struct _OFSTRUCT {
    BYTE cBytes;
    BYTE fFixedDisk;
    WORD nErrCode;
    WORD Reserved1;
    WORD Reserved2;
    CHAR szPathName[128];
} OFSTRUCT, *LPOFSTRUCT, *POFSTRUCT;






















































#line 1003 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



__declspec(dllimport)
LONG
__stdcall
InterlockedIncrement(
    LPLONG lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedDecrement(
    LPLONG lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedExchange(
    LPLONG Target,
    LONG Value
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedExchangeAdd(
    LPLONG Addend,
    LONG Value
    );

__declspec(dllimport)
PVOID
__stdcall
InterlockedCompareExchange (
    PVOID *Destination,
    PVOID Exchange,
    PVOID Comperand
    );

#line 1046 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

#line 1048 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FreeResource(
        HGLOBAL hResData
        );

__declspec(dllimport)
LPVOID
__stdcall
LockResource(
        HGLOBAL hResData
        );







int
__stdcall



#line 1075 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"
WinMain(
    HINSTANCE hInstance,
    HINSTANCE hPrevInstance,
    LPSTR lpCmdLine,
    int nShowCmd
    );

__declspec(dllimport)
BOOL
__stdcall
FreeLibrary(
    HMODULE hLibModule
    );


__declspec(dllimport)
void
__stdcall
FreeLibraryAndExitThread(
    HMODULE hLibModule,
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
DisableThreadLibraryCalls(
    HMODULE hLibModule
    );

__declspec(dllimport)
FARPROC
__stdcall
GetProcAddress(
    HMODULE hModule,
    LPCSTR lpProcName
    );

__declspec(dllimport)
DWORD
__stdcall
GetVersion( void );

__declspec(dllimport)
HGLOBAL
__stdcall
GlobalAlloc(
    UINT uFlags,
    DWORD dwBytes
    );

__declspec(dllimport)
HGLOBAL
__stdcall
GlobalReAlloc(
    HGLOBAL hMem,
    DWORD dwBytes,
    UINT uFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GlobalSize(
    HGLOBAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
GlobalFlags(
    HGLOBAL hMem
    );


__declspec(dllimport)
LPVOID
__stdcall
GlobalLock(
    HGLOBAL hMem
    );


__declspec(dllimport)
HGLOBAL
__stdcall
GlobalHandle(
    LPCVOID pMem
    );


__declspec(dllimport)
BOOL
__stdcall
GlobalUnlock(
    HGLOBAL hMem
    );


__declspec(dllimport)
HGLOBAL
__stdcall
GlobalFree(
    HGLOBAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
GlobalCompact(
    DWORD dwMinFree
    );

__declspec(dllimport)
void
__stdcall
GlobalFix(
    HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalUnfix(
    HGLOBAL hMem
    );

__declspec(dllimport)
LPVOID
__stdcall
GlobalWire(
    HGLOBAL hMem
    );

__declspec(dllimport)
BOOL
__stdcall
GlobalUnWire(
    HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalMemoryStatus(
    LPMEMORYSTATUS lpBuffer
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalAlloc(
    UINT uFlags,
    UINT uBytes
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalReAlloc(
    HLOCAL hMem,
    UINT uBytes,
    UINT uFlags
    );

__declspec(dllimport)
LPVOID
__stdcall
LocalLock(
    HLOCAL hMem
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalHandle(
    LPCVOID pMem
    );

__declspec(dllimport)
BOOL
__stdcall
LocalUnlock(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalSize(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalFlags(
    HLOCAL hMem
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalFree(
    HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalShrink(
    HLOCAL hMem,
    UINT cbNewSize
    );

__declspec(dllimport)
UINT
__stdcall
LocalCompact(
    UINT uMinFree
    );

__declspec(dllimport)
BOOL
__stdcall
FlushInstructionCache(
    HANDLE hProcess,
    LPCVOID lpBaseAddress,
    DWORD dwSize
    );

__declspec(dllimport)
LPVOID
__stdcall
VirtualAlloc(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flAllocationType,
    DWORD flProtect
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFree(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtect(
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flNewProtect,
    PDWORD lpflOldProtect
    );

__declspec(dllimport)
DWORD
__stdcall
VirtualQuery(
    LPCVOID lpAddress,
    PMEMORY_BASIC_INFORMATION lpBuffer,
    DWORD dwLength
    );

__declspec(dllimport)
LPVOID
__stdcall
VirtualAllocEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flAllocationType,
    DWORD flProtect
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFreeEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtectEx(
    HANDLE hProcess,
    LPVOID lpAddress,
    DWORD dwSize,
    DWORD flNewProtect,
    PDWORD lpflOldProtect
    );

__declspec(dllimport)
DWORD
__stdcall
VirtualQueryEx(
    HANDLE hProcess,
    LPCVOID lpAddress,
    PMEMORY_BASIC_INFORMATION lpBuffer,
    DWORD dwLength
    );

__declspec(dllimport)
HANDLE
__stdcall
HeapCreate(
    DWORD flOptions,
    DWORD dwInitialSize,
    DWORD dwMaximumSize
    );

__declspec(dllimport)
BOOL
__stdcall
HeapDestroy(
    HANDLE hHeap
    );


__declspec(dllimport)
LPVOID
__stdcall
HeapAlloc(
    HANDLE hHeap,
    DWORD dwFlags,
    DWORD dwBytes
    );

__declspec(dllimport)
LPVOID
__stdcall
HeapReAlloc(
    HANDLE hHeap,
    DWORD dwFlags,
    LPVOID lpMem,
    DWORD dwBytes
    );

__declspec(dllimport)
BOOL
__stdcall
HeapFree(
    HANDLE hHeap,
    DWORD dwFlags,
    LPVOID lpMem
    );

__declspec(dllimport)
DWORD
__stdcall
HeapSize(
    HANDLE hHeap,
    DWORD dwFlags,
    LPCVOID lpMem
    );

__declspec(dllimport)
BOOL
__stdcall
HeapValidate(
    HANDLE hHeap,
    DWORD dwFlags,
    LPCVOID lpMem
    );

__declspec(dllimport)
UINT
__stdcall
HeapCompact(
    HANDLE hHeap,
    DWORD dwFlags
    );

__declspec(dllimport)
HANDLE
__stdcall
GetProcessHeap( void );

__declspec(dllimport)
DWORD
__stdcall
GetProcessHeaps(
    DWORD NumberOfHeaps,
    PHANDLE ProcessHeaps
    );

typedef struct _PROCESS_HEAP_ENTRY {
    PVOID lpData;
    DWORD cbData;
    BYTE cbOverhead;
    BYTE iRegionIndex;
    WORD wFlags;
    union {
        struct {
            HANDLE hMem;
            DWORD dwReserved[ 3 ];
        } Block;
        struct {
            DWORD dwCommittedSize;
            DWORD dwUnCommittedSize;
            LPVOID lpFirstBlock;
            LPVOID lpLastBlock;
        } Region;
    };
} PROCESS_HEAP_ENTRY, *LPPROCESS_HEAP_ENTRY, *PPROCESS_HEAP_ENTRY;







__declspec(dllimport)
BOOL
__stdcall
HeapLock(
    HANDLE hHeap
    );

__declspec(dllimport)
BOOL
__stdcall
HeapUnlock(
    HANDLE hHeap
    );


__declspec(dllimport)
BOOL
__stdcall
HeapWalk(
    HANDLE hHeap,
    LPPROCESS_HEAP_ENTRY lpEntry
    );










__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeA(
    LPCSTR lpApplicationName,
    LPDWORD lpBinaryType
    );
__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeW(
    LPCWSTR lpApplicationName,
    LPDWORD lpBinaryType
    );




#line 1547 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameA(
    LPCSTR lpszLongPath,
    LPSTR  lpszShortPath,
    DWORD    cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameW(
    LPCWSTR lpszLongPath,
    LPWSTR  lpszShortPath,
    DWORD    cchBuffer
    );




#line 1569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameA(
    LPCSTR lpszShortPath,
    LPSTR  lpszLongPath,
    DWORD    cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameW(
    LPCWSTR lpszShortPath,
    LPWSTR  lpszLongPath,
    DWORD    cchBuffer
    );




#line 1591 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetProcessAffinityMask(
    HANDLE hProcess,
    LPDWORD lpProcessAffinityMask,
    LPDWORD lpSystemAffinityMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessAffinityMask(
    HANDLE hProcess,
    DWORD dwProcessAffinityMask
    );


__declspec(dllimport)
BOOL
__stdcall
GetProcessTimes(
    HANDLE hProcess,
    LPFILETIME lpCreationTime,
    LPFILETIME lpExitTime,
    LPFILETIME lpKernelTime,
    LPFILETIME lpUserTime
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessWorkingSetSize(
    HANDLE hProcess,
    LPDWORD lpMinimumWorkingSetSize,
    LPDWORD lpMaximumWorkingSetSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessWorkingSetSize(
    HANDLE hProcess,
    DWORD dwMinimumWorkingSetSize,
    DWORD dwMaximumWorkingSetSize
    );

__declspec(dllimport)
HANDLE
__stdcall
OpenProcess(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    DWORD dwProcessId
    );

__declspec(dllimport)
HANDLE
__stdcall
GetCurrentProcess(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentProcessId(
    void
    );

__declspec(dllimport)
void
__stdcall
ExitProcess(
    UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateProcess(
    HANDLE hProcess,
    UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeProcess(
    HANDLE hProcess,
    LPDWORD lpExitCode
    );


__declspec(dllimport)
void
__stdcall
FatalExit(
    int ExitCode
    );

__declspec(dllimport)
LPSTR
__stdcall
GetEnvironmentStrings(
    void
    );

__declspec(dllimport)
LPWSTR
__stdcall
GetEnvironmentStringsW(
    void
    );





#line 1712 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsA(
    LPSTR
    );
__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsW(
    LPWSTR
    );




#line 1730 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
RaiseException(
    DWORD dwExceptionCode,
    DWORD dwExceptionFlags,
    DWORD nNumberOfArguments,
    const DWORD *lpArguments
    );

__declspec(dllimport)
LONG
__stdcall
UnhandledExceptionFilter(
    struct _EXCEPTION_POINTERS *ExceptionInfo
    );

typedef LONG (__stdcall *PTOP_LEVEL_EXCEPTION_FILTER)(
    struct _EXCEPTION_POINTERS *ExceptionInfo
    );
typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;

__declspec(dllimport)
LPTOP_LEVEL_EXCEPTION_FILTER
__stdcall
SetUnhandledExceptionFilter(
    LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter
    );






































#line 1798 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateThread(
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    DWORD dwStackSize,
    LPTHREAD_START_ROUTINE lpStartAddress,
    LPVOID lpParameter,
    DWORD dwCreationFlags,
    LPDWORD lpThreadId
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateRemoteThread(
    HANDLE hProcess,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    DWORD dwStackSize,
    LPTHREAD_START_ROUTINE lpStartAddress,
    LPVOID lpParameter,
    DWORD dwCreationFlags,
    LPDWORD lpThreadId
    );

__declspec(dllimport)
HANDLE
__stdcall
GetCurrentThread(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentThreadId(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
SetThreadAffinityMask(
    HANDLE hThread,
    DWORD dwThreadAffinityMask
    );









#line 1855 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetProcessPriorityBoost(
    HANDLE hProcess,
    BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessPriorityBoost(
    HANDLE hProcess,
    PBOOL pDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
RequestWakeupLatency(
    LATENCY_TIME latency
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriority(
    HANDLE hThread,
    int nPriority
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriorityBoost(
    HANDLE hThread,
    BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadPriorityBoost(
    HANDLE hThread,
    PBOOL pDisablePriorityBoost
    );

__declspec(dllimport)
int
__stdcall
GetThreadPriority(
    HANDLE hThread
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadTimes(
    HANDLE hThread,
    LPFILETIME lpCreationTime,
    LPFILETIME lpExitTime,
    LPFILETIME lpKernelTime,
    LPFILETIME lpUserTime
    );

__declspec(dllimport)
void
__stdcall
ExitThread(
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateThread(
    HANDLE hThread,
    DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeThread(
    HANDLE hThread,
    LPDWORD lpExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadSelectorEntry(
    HANDLE hThread,
    DWORD dwSelector,
    LPLDT_ENTRY lpSelectorEntry
    );

__declspec(dllimport)
EXECUTION_STATE
__stdcall
SetThreadExecutionState(
    EXECUTION_STATE esFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetLastError(
    void
    );

__declspec(dllimport)
void
__stdcall
SetLastError(
    DWORD dwErrCode
    );



__declspec(dllimport)
BOOL
__stdcall
GetOverlappedResult(
    HANDLE hFile,
    LPOVERLAPPED lpOverlapped,
    LPDWORD lpNumberOfBytesTransferred,
    BOOL bWait
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateIoCompletionPort(
    HANDLE FileHandle,
    HANDLE ExistingCompletionPort,
    DWORD CompletionKey,
    DWORD NumberOfConcurrentThreads
    );

__declspec(dllimport)
BOOL
__stdcall
GetQueuedCompletionStatus(
    HANDLE CompletionPort,
    LPDWORD lpNumberOfBytesTransferred,
    LPDWORD lpCompletionKey,
    LPOVERLAPPED *lpOverlapped,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
PostQueuedCompletionStatus(
    HANDLE CompletionPort,
    DWORD dwNumberOfBytesTransferred,
    DWORD dwCompletionKey,
    LPOVERLAPPED lpOverlapped
    );






__declspec(dllimport)
UINT
__stdcall
SetErrorMode(
    UINT uMode
    );

__declspec(dllimport)
BOOL
__stdcall
ReadProcessMemory(
    HANDLE hProcess,
    LPCVOID lpBaseAddress,
    LPVOID lpBuffer,
    DWORD nSize,
    LPDWORD lpNumberOfBytesRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteProcessMemory(
    HANDLE hProcess,
    LPVOID lpBaseAddress,
    LPVOID lpBuffer,
    DWORD nSize,
    LPDWORD lpNumberOfBytesWritten
    );


__declspec(dllimport)
BOOL
__stdcall
GetThreadContext(
    HANDLE hThread,
    LPCONTEXT lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadContext(
    HANDLE hThread,
    const CONTEXT *lpContext
    );
#line 2068 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
SuspendThread(
    HANDLE hThread
    );

__declspec(dllimport)
DWORD
__stdcall
ResumeThread(
    HANDLE hThread
    );


















#line 2101 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"








#line 2110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
DebugBreak(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
WaitForDebugEvent(
    LPDEBUG_EVENT lpDebugEvent,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
ContinueDebugEvent(
    DWORD dwProcessId,
    DWORD dwThreadId,
    DWORD dwContinueStatus
    );

__declspec(dllimport)
BOOL
__stdcall
DebugActiveProcess(
    DWORD dwProcessId
    );

__declspec(dllimport)
void
__stdcall
InitializeCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
EnterCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
LeaveCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

















#line 2180 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"








#line 2189 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
DeleteCriticalSection(
    LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
BOOL
__stdcall
SetEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ResetEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
PulseEvent(
    HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseSemaphore(
    HANDLE hSemaphore,
    LONG lReleaseCount,
    LPLONG lpPreviousCount
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseMutex(
    HANDLE hMutex
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObject(
    HANDLE hHandle,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjects(
    DWORD nCount,
    const HANDLE *lpHandles,
    BOOL bWaitAll,
    DWORD dwMilliseconds
    );

__declspec(dllimport)
void
__stdcall
Sleep(
    DWORD dwMilliseconds
    );

__declspec(dllimport)
HGLOBAL
__stdcall
LoadResource(
    HMODULE hModule,
    HRSRC hResInfo
    );

__declspec(dllimport)
DWORD
__stdcall
SizeofResource(
    HMODULE hModule,
    HRSRC hResInfo
    );


__declspec(dllimport)
ATOM
__stdcall
GlobalDeleteAtom(
    ATOM nAtom
    );

__declspec(dllimport)
BOOL
__stdcall
InitAtomTable(
    DWORD nSize
    );

__declspec(dllimport)
ATOM
__stdcall
DeleteAtom(
    ATOM nAtom
    );

__declspec(dllimport)
UINT
__stdcall
SetHandleCount(
    UINT uNumber
    );

__declspec(dllimport)
DWORD
__stdcall
GetLogicalDrives(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
LockFile(
    HANDLE hFile,
    DWORD dwFileOffsetLow,
    DWORD dwFileOffsetHigh,
    DWORD nNumberOfBytesToLockLow,
    DWORD nNumberOfBytesToLockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
UnlockFile(
    HANDLE hFile,
    DWORD dwFileOffsetLow,
    DWORD dwFileOffsetHigh,
    DWORD nNumberOfBytesToUnlockLow,
    DWORD nNumberOfBytesToUnlockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
LockFileEx(
    HANDLE hFile,
    DWORD dwFlags,
    DWORD dwReserved,
    DWORD nNumberOfBytesToLockLow,
    DWORD nNumberOfBytesToLockHigh,
    LPOVERLAPPED lpOverlapped
    );




__declspec(dllimport)
BOOL
__stdcall
UnlockFileEx(
    HANDLE hFile,
    DWORD dwReserved,
    DWORD nNumberOfBytesToUnlockLow,
    DWORD nNumberOfBytesToUnlockHigh,
    LPOVERLAPPED lpOverlapped
    );

typedef struct _BY_HANDLE_FILE_INFORMATION {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD dwVolumeSerialNumber;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD nNumberOfLinks;
    DWORD nFileIndexHigh;
    DWORD nFileIndexLow;
} BY_HANDLE_FILE_INFORMATION, *PBY_HANDLE_FILE_INFORMATION, *LPBY_HANDLE_FILE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
GetFileInformationByHandle(
    HANDLE hFile,
    LPBY_HANDLE_FILE_INFORMATION lpFileInformation
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileType(
    HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileSize(
    HANDLE hFile,
    LPDWORD lpFileSizeHigh
    );

__declspec(dllimport)
HANDLE
__stdcall
GetStdHandle(
    DWORD nStdHandle
    );

__declspec(dllimport)
BOOL
__stdcall
SetStdHandle(
    DWORD nStdHandle,
    HANDLE hHandle
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFile(
    HANDLE hFile,
    LPCVOID lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpNumberOfBytesWritten,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
ReadFile(
    HANDLE hFile,
    LPVOID lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPDWORD lpNumberOfBytesRead,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
FlushFileBuffers(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
DeviceIoControl(
    HANDLE hDevice,
    DWORD dwIoControlCode,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesReturned,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
GetDevicePowerState(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
SetEndOfFile(
    HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
SetFilePointer(
    HANDLE hFile,
    LONG lDistanceToMove,
    PLONG lpDistanceToMoveHigh,
    DWORD dwMoveMethod
    );

__declspec(dllimport)
BOOL
__stdcall
FindClose(
    HANDLE hFindFile
    );

__declspec(dllimport)
BOOL
__stdcall
GetFileTime(
    HANDLE hFile,
    LPFILETIME lpCreationTime,
    LPFILETIME lpLastAccessTime,
    LPFILETIME lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileTime(
    HANDLE hFile,
    const FILETIME *lpCreationTime,
    const FILETIME *lpLastAccessTime,
    const FILETIME *lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
CloseHandle(
    HANDLE hObject
    );

__declspec(dllimport)
BOOL
__stdcall
DuplicateHandle(
    HANDLE hSourceProcessHandle,
    HANDLE hSourceHandle,
    HANDLE hTargetProcessHandle,
    LPHANDLE lpTargetHandle,
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    DWORD dwOptions
    );

__declspec(dllimport)
BOOL
__stdcall
GetHandleInformation(
    HANDLE hObject,
    LPDWORD lpdwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetHandleInformation(
    HANDLE hObject,
    DWORD dwMask,
    DWORD dwFlags
    );






__declspec(dllimport)
DWORD
__stdcall
LoadModule(
    LPCSTR lpModuleName,
    LPVOID lpParameterBlock
    );

__declspec(dllimport)
UINT
__stdcall
WinExec(
    LPCSTR lpCmdLine,
    UINT uCmdShow
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommBreak(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommError(
    HANDLE hFile,
    LPDWORD lpErrors,
    LPCOMSTAT lpStat
    );

__declspec(dllimport)
BOOL
__stdcall
SetupComm(
    HANDLE hFile,
    DWORD dwInQueue,
    DWORD dwOutQueue
    );

__declspec(dllimport)
BOOL
__stdcall
EscapeCommFunction(
    HANDLE hFile,
    DWORD dwFunc
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommConfig(
    HANDLE hCommDev,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommMask(
    HANDLE hFile,
    LPDWORD lpEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommProperties(
    HANDLE hFile,
    LPCOMMPROP lpCommProp
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommModemStatus(
    HANDLE hFile,
    LPDWORD lpModemStat
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommState(
    HANDLE hFile,
    LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommTimeouts(
    HANDLE hFile,
    LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
PurgeComm(
    HANDLE hFile,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommBreak(
    HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommConfig(
    HANDLE hCommDev,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommMask(
    HANDLE hFile,
    DWORD dwEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommState(
    HANDLE hFile,
    LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommTimeouts(
    HANDLE hFile,
    LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
TransmitCommChar(
    HANDLE hFile,
    char cChar
    );

__declspec(dllimport)
BOOL
__stdcall
WaitCommEvent(
    HANDLE hFile,
    LPDWORD lpEvtMask,
    LPOVERLAPPED lpOverlapped
    );


__declspec(dllimport)
DWORD
__stdcall
SetTapePosition(
    HANDLE hDevice,
    DWORD dwPositionMethod,
    DWORD dwPartition,
    DWORD dwOffsetLow,
    DWORD dwOffsetHigh,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapePosition(
    HANDLE hDevice,
    DWORD dwPositionType,
    LPDWORD lpdwPartition,
    LPDWORD lpdwOffsetLow,
    LPDWORD lpdwOffsetHigh
    );

__declspec(dllimport)
DWORD
__stdcall
PrepareTape(
    HANDLE hDevice,
    DWORD dwOperation,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
EraseTape(
    HANDLE hDevice,
    DWORD dwEraseType,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
CreateTapePartition(
    HANDLE hDevice,
    DWORD dwPartitionMethod,
    DWORD dwCount,
    DWORD dwSize
    );

__declspec(dllimport)
DWORD
__stdcall
WriteTapemark(
    HANDLE hDevice,
    DWORD dwTapemarkType,
    DWORD dwTapemarkCount,
    BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeStatus(
    HANDLE hDevice
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeParameters(
    HANDLE hDevice,
    DWORD dwOperation,
    LPDWORD lpdwSize,
    LPVOID lpTapeInformation
    );




__declspec(dllimport)
DWORD
__stdcall
SetTapeParameters(
    HANDLE hDevice,
    DWORD dwOperation,
    LPVOID lpTapeInformation
    );




__declspec(dllimport)
BOOL
__stdcall
Beep(
    DWORD dwFreq,
    DWORD dwDuration
    );

__declspec(dllimport)
int
__stdcall
MulDiv(
    int nNumber,
    int nNumerator,
    int nDenominator
    );

__declspec(dllimport)
void
__stdcall
GetSystemTime(
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemTimeAsFileTime(
    LPFILETIME lpSystemTimeAsFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTime(
    const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetLocalTime(
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetLocalTime(
    const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemInfo(
    LPSYSTEM_INFO lpSystemInfo
    );

__declspec(dllimport)
BOOL
__stdcall
IsProcessorFeaturePresent(
    DWORD ProcessorFeature
    );

typedef struct _TIME_ZONE_INFORMATION {
    LONG Bias;
    WCHAR StandardName[ 32 ];
    SYSTEMTIME StandardDate;
    LONG StandardBias;
    WCHAR DaylightName[ 32 ];
    SYSTEMTIME DaylightDate;
    LONG DaylightBias;
} TIME_ZONE_INFORMATION, *PTIME_ZONE_INFORMATION, *LPTIME_ZONE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
SystemTimeToTzSpecificLocalTime(
    LPTIME_ZONE_INFORMATION lpTimeZoneInformation,
    LPSYSTEMTIME lpUniversalTime,
    LPSYSTEMTIME lpLocalTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTimeZoneInformation(
    LPTIME_ZONE_INFORMATION lpTimeZoneInformation
    );

__declspec(dllimport)
BOOL
__stdcall
SetTimeZoneInformation(
    const TIME_ZONE_INFORMATION *lpTimeZoneInformation
    );






__declspec(dllimport)
BOOL
__stdcall
SystemTimeToFileTime(
    const SYSTEMTIME *lpSystemTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToLocalFileTime(
    const FILETIME *lpFileTime,
    LPFILETIME lpLocalFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
LocalFileTimeToFileTime(
    const FILETIME *lpLocalFileTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToSystemTime(
    const FILETIME *lpFileTime,
    LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
LONG
__stdcall
CompareFileTime(
    const FILETIME *lpFileTime1,
    const FILETIME *lpFileTime2
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToDosDateTime(
    const FILETIME *lpFileTime,
    LPWORD lpFatDate,
    LPWORD lpFatTime
    );

__declspec(dllimport)
BOOL
__stdcall
DosDateTimeToFileTime(
    WORD wFatDate,
    WORD wFatTime,
    LPFILETIME lpFileTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTickCount(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTimeAdjustment(
    DWORD dwTimeAdjustment,
    BOOL  bTimeAdjustmentDisabled
    );

__declspec(dllimport)
BOOL
__stdcall
GetSystemTimeAdjustment(
    PDWORD lpTimeAdjustment,
    PDWORD lpTimeIncrement,
    PBOOL  lpTimeAdjustmentDisabled
    );


__declspec(dllimport)
DWORD
__stdcall
FormatMessageA(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );
__declspec(dllimport)
DWORD
__stdcall
FormatMessageW(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPWSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );




#line 3019 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"
#line 3020 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"










__declspec(dllimport)
BOOL
__stdcall
CreatePipe(
    PHANDLE hReadPipe,
    PHANDLE hWritePipe,
    LPSECURITY_ATTRIBUTES lpPipeAttributes,
    DWORD nSize
    );

__declspec(dllimport)
BOOL
__stdcall
ConnectNamedPipe(
    HANDLE hNamedPipe,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
DisconnectNamedPipe(
    HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
SetNamedPipeHandleState(
    HANDLE hNamedPipe,
    LPDWORD lpMode,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeInfo(
    HANDLE hNamedPipe,
    LPDWORD lpFlags,
    LPDWORD lpOutBufferSize,
    LPDWORD lpInBufferSize,
    LPDWORD lpMaxInstances
    );

__declspec(dllimport)
BOOL
__stdcall
PeekNamedPipe(
    HANDLE hNamedPipe,
    LPVOID lpBuffer,
    DWORD nBufferSize,
    LPDWORD lpBytesRead,
    LPDWORD lpTotalBytesAvail,
    LPDWORD lpBytesLeftThisMessage
    );

__declspec(dllimport)
BOOL
__stdcall
TransactNamedPipe(
    HANDLE hNamedPipe,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
HANDLE
__stdcall
CreateMailslotA(
    LPCSTR lpName,
    DWORD nMaxMessageSize,
    DWORD lReadTimeout,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateMailslotW(
    LPCWSTR lpName,
    DWORD nMaxMessageSize,
    DWORD lReadTimeout,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 3124 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetMailslotInfo(
    HANDLE hMailslot,
    LPDWORD lpMaxMessageSize,
    LPDWORD lpNextSize,
    LPDWORD lpMessageCount,
    LPDWORD lpReadTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
SetMailslotInfo(
    HANDLE hMailslot,
    DWORD lReadTimeout
    );

__declspec(dllimport)
LPVOID
__stdcall
MapViewOfFile(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORD dwFileOffsetHigh,
    DWORD dwFileOffsetLow,
    DWORD dwNumberOfBytesToMap
    );


__declspec(dllimport)
PVOID64
__stdcall
MapViewOfFileVlm(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORDLONG ulOffset,
    DWORDLONG ulNumberOfBytesToMap,
    PVOID64 lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
FlushViewOfFile(
    LPCVOID lpBaseAddress,
    DWORD dwNumberOfBytesToFlush
    );

__declspec(dllimport)
BOOL
__stdcall
UnmapViewOfFile(
    LPCVOID lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
UnmapViewOfFileVlm(
    PVOID64 lpBaseAddress
    );





__declspec(dllimport)
BOOL
__stdcall
EncryptFileA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
EncryptFileW(
    LPCWSTR lpFileName
    );




#line 3210 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DecryptFileA(
    LPCSTR lpFileName,
    DWORD    dwReserved
    );
__declspec(dllimport)
BOOL
__stdcall
DecryptFileW(
    LPCWSTR lpFileName,
    DWORD    dwReserved
    );




#line 3230 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"







typedef
DWORD
(*PFE_EXPORT_FUNC)(
    PBYTE pbData,
    PVOID pvCallbackContext,
    ULONG ulLength
    );

typedef
DWORD
(*PFE_IMPORT_FUNC)(
    PBYTE pbData,
    PVOID pvCallbackContext,
    PULONG ulLength
    );










__declspec(dllimport)
DWORD
__stdcall
OpenRawA(
    LPCSTR        lpFileName,
    ULONG           ulFlags,
    PVOID *         pvContext
    );
__declspec(dllimport)
DWORD
__stdcall
OpenRawW(
    LPCWSTR        lpFileName,
    ULONG           ulFlags,
    PVOID *         pvContext
    );




#line 3283 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
ReadRaw(
    PFE_EXPORT_FUNC pfExportCallback,
    PVOID           pvCallbackContext,
    PVOID           pvContext
    );

__declspec(dllimport)
DWORD
__stdcall
WriteRaw(
    PFE_IMPORT_FUNC pfImportCallback,
    PVOID           pvCallbackContext,
    PVOID           pvContext
    );

__declspec(dllimport)
void
__stdcall
CloseRaw(
    PVOID           pvContext
    );

typedef struct _RECOVERY_AGENT_INFORMATIONA {
    DWORD NextEntryOffset;
    DWORD AgentNameLength;
    CHAR   AgentInformation[1];
} RECOVERY_AGENT_INFORMATIONA, *LPRECOVERY_AGENT_INFORMATIONA;
typedef struct _RECOVERY_AGENT_INFORMATIONW {
    DWORD NextEntryOffset;
    DWORD AgentNameLength;
    WCHAR  AgentInformation[1];
} RECOVERY_AGENT_INFORMATIONW, *LPRECOVERY_AGENT_INFORMATIONW;

typedef RECOVERY_AGENT_INFORMATIONW RECOVERY_AGENT_INFORMATION;
typedef LPRECOVERY_AGENT_INFORMATIONW LPRECOVERY_AGENT_INFORMATION;



#line 3326 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
QueryRecoveryAgentsA(
           LPCSTR                        lpFileName,
          PDWORD                          AgentCount,
          LPRECOVERY_AGENT_INFORMATIONA * RecoveryAgentInformation
     );
__declspec(dllimport)
DWORD
__stdcall
QueryRecoveryAgentsW(
           LPCWSTR                        lpFileName,
          PDWORD                          AgentCount,
          LPRECOVERY_AGENT_INFORMATIONW * RecoveryAgentInformation
     );




#line 3348 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





__declspec(dllimport)
int
__stdcall
lstrcmpA(
    LPCSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpW(
    LPCWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3372 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
int
__stdcall
lstrcmpiA(
    LPCSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpiW(
    LPCWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcpynA(
    LPSTR lpString1,
    LPCSTR lpString2,
    int iMaxLength
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcpynW(
    LPWSTR lpString1,
    LPCWSTR lpString2,
    int iMaxLength
    );




#line 3414 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcpyA(
    LPSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcpyW(
    LPWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3434 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
lstrcatA(
    LPSTR lpString1,
    LPCSTR lpString2
    );
__declspec(dllimport)
LPWSTR
__stdcall
lstrcatW(
    LPWSTR lpString1,
    LPCWSTR lpString2
    );




#line 3454 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
int
__stdcall
lstrlenA(
    LPCSTR lpString
    );
__declspec(dllimport)
int
__stdcall
lstrlenW(
    LPCWSTR lpString
    );




#line 3472 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HFILE
__stdcall
OpenFile(
    LPCSTR lpFileName,
    LPOFSTRUCT lpReOpenBuff,
    UINT uStyle
    );

__declspec(dllimport)
HFILE
__stdcall
_lopen(
    LPCSTR lpPathName,
    int iReadWrite
    );

__declspec(dllimport)
HFILE
__stdcall
_lcreat(
    LPCSTR lpPathName,
    int  iAttribute
    );

__declspec(dllimport)
UINT
__stdcall
_lread(
    HFILE hFile,
    LPVOID lpBuffer,
    UINT uBytes
    );

__declspec(dllimport)
UINT
__stdcall
_lwrite(
    HFILE hFile,
    LPCSTR lpBuffer,
    UINT uBytes
    );

__declspec(dllimport)
long
__stdcall
_hread(
    HFILE hFile,
    LPVOID lpBuffer,
    long lBytes
    );

__declspec(dllimport)
long
__stdcall
_hwrite(
    HFILE hFile,
    LPCSTR lpBuffer,
    long lBytes
    );

__declspec(dllimport)
HFILE
__stdcall
_lclose(
    HFILE hFile
    );

__declspec(dllimport)
LONG
__stdcall
_llseek(
    HFILE hFile,
    LONG lOffset,
    int iOrigin
    );

__declspec(dllimport)
BOOL
__stdcall
IsTextUnicode(
    const LPVOID lpBuffer,
    int cb,
    LPINT lpi
    );

__declspec(dllimport)
DWORD
__stdcall
TlsAlloc(
    void
    );



__declspec(dllimport)
LPVOID
__stdcall
TlsGetValue(
    DWORD dwTlsIndex
    );

__declspec(dllimport)
BOOL
__stdcall
TlsSetValue(
    DWORD dwTlsIndex,
    LPVOID lpTlsValue
    );

__declspec(dllimport)
BOOL
__stdcall
TlsFree(
    DWORD dwTlsIndex
    );

typedef
void
(__stdcall *LPOVERLAPPED_COMPLETION_ROUTINE)(
    DWORD dwErrorCode,
    DWORD dwNumberOfBytesTransfered,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
DWORD
__stdcall
SleepEx(
    DWORD dwMilliseconds,
    BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObjectEx(
    HANDLE hHandle,
    DWORD dwMilliseconds,
    BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjectsEx(
    DWORD nCount,
    const HANDLE *lpHandles,
    BOOL bWaitAll,
    DWORD dwMilliseconds,
    BOOL bAlertable
    );











#line 3637 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReadFileEx(
    HANDLE hFile,
    LPVOID lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPOVERLAPPED lpOverlapped,
    LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileEx(
    HANDLE hFile,
    LPCVOID lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPOVERLAPPED lpOverlapped,
    LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
BackupRead(
    HANDLE hFile,
    LPBYTE lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPDWORD lpNumberOfBytesRead,
    BOOL bAbort,
    BOOL bProcessSecurity,
    LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupSeek(
    HANDLE hFile,
    DWORD  dwLowBytesToSeek,
    DWORD  dwHighBytesToSeek,
    LPDWORD lpdwLowByteSeeked,
    LPDWORD lpdwHighByteSeeked,
    LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupWrite(
    HANDLE hFile,
    LPBYTE lpBuffer,
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpNumberOfBytesWritten,
    BOOL bAbort,
    BOOL bProcessSecurity,
    LPVOID *lpContext
    );




typedef struct _WIN32_STREAM_ID {
        DWORD          dwStreamId ;
        DWORD          dwStreamAttributes ;
        LARGE_INTEGER  Size ;
        DWORD          dwStreamNameSize ;
        WCHAR          cStreamName[ 1 ] ;
} WIN32_STREAM_ID, *LPWIN32_STREAM_ID ;



























__declspec(dllimport)
BOOL
__stdcall
ReadFileScatter(
    HANDLE hFile,
    FILE_SEGMENT_ELEMENT aSegmentArray[],
    DWORD nNumberOfBytesToRead,
    LPDWORD lpReserved,
    LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileGather(
    HANDLE hFile,
    FILE_SEGMENT_ELEMENT aSegmentArray[],
    DWORD nNumberOfBytesToWrite,
    LPDWORD lpReserved,
    LPOVERLAPPED lpOverlapped
    );
















#line 3773 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

typedef struct _STARTUPINFOA {
    DWORD   cb;
    LPSTR   lpReserved;
    LPSTR   lpDesktop;
    LPSTR   lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOA, *LPSTARTUPINFOA;
typedef struct _STARTUPINFOW {
    DWORD   cb;
    LPWSTR  lpReserved;
    LPWSTR  lpDesktop;
    LPWSTR  lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOW, *LPSTARTUPINFOW;

typedef STARTUPINFOW STARTUPINFO;
typedef LPSTARTUPINFOW LPSTARTUPINFO;



#line 3821 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



typedef struct _WIN32_FIND_DATAA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    CHAR   cFileName[ 260 ];
    CHAR   cAlternateFileName[ 14 ];





} WIN32_FIND_DATAA, *PWIN32_FIND_DATAA, *LPWIN32_FIND_DATAA;
typedef struct _WIN32_FIND_DATAW {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    WCHAR  cFileName[ 260 ];
    WCHAR  cAlternateFileName[ 14 ];





} WIN32_FIND_DATAW, *PWIN32_FIND_DATAW, *LPWIN32_FIND_DATAW;

typedef WIN32_FIND_DATAW WIN32_FIND_DATA;
typedef PWIN32_FIND_DATAW PWIN32_FIND_DATA;
typedef LPWIN32_FIND_DATAW LPWIN32_FIND_DATA;




#line 3867 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
} WIN32_FILE_ATTRIBUTE_DATA, *LPWIN32_FILE_ATTRIBUTE_DATA;

__declspec(dllimport)
HANDLE
__stdcall
CreateMutexA(
    LPSECURITY_ATTRIBUTES lpMutexAttributes,
    BOOL bInitialOwner,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateMutexW(
    LPSECURITY_ATTRIBUTES lpMutexAttributes,
    BOOL bInitialOwner,
    LPCWSTR lpName
    );




#line 3898 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenMutexA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenMutexW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 3920 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateEventA(
    LPSECURITY_ATTRIBUTES lpEventAttributes,
    BOOL bManualReset,
    BOOL bInitialState,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateEventW(
    LPSECURITY_ATTRIBUTES lpEventAttributes,
    BOOL bManualReset,
    BOOL bInitialState,
    LPCWSTR lpName
    );




#line 3944 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenEventA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenEventW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 3966 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateSemaphoreA(
    LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
    LONG lInitialCount,
    LONG lMaximumCount,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateSemaphoreW(
    LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
    LONG lInitialCount,
    LONG lMaximumCount,
    LPCWSTR lpName
    );




#line 3990 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenSemaphoreA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenSemaphoreW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 4012 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"








































































#line 4085 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
CreateFileMappingA(
    HANDLE hFile,
    LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    DWORD flProtect,
    DWORD dwMaximumSizeHigh,
    DWORD dwMaximumSizeLow,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateFileMappingW(
    HANDLE hFile,
    LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    DWORD flProtect,
    DWORD dwMaximumSizeHigh,
    DWORD dwMaximumSizeLow,
    LPCWSTR lpName
    );




#line 4113 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenFileMappingA(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCSTR lpName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenFileMappingW(
    DWORD dwDesiredAccess,
    BOOL bInheritHandle,
    LPCWSTR lpName
    );




#line 4135 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 4155 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryA(
    LPCSTR lpLibFileName
    );
__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryW(
    LPCWSTR lpLibFileName
    );




#line 4173 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryExA(
    LPCSTR lpLibFileName,
    HANDLE hFile,
    DWORD dwFlags
    );
__declspec(dllimport)
HMODULE
__stdcall
LoadLibraryExW(
    LPCWSTR lpLibFileName,
    HANDLE hFile,
    DWORD dwFlags
    );




#line 4195 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"







__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameA(
    HMODULE hModule,
    LPSTR lpFilename,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameW(
    HMODULE hModule,
    LPWSTR lpFilename,
    DWORD nSize
    );




#line 4223 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HMODULE
__stdcall
GetModuleHandleA(
    LPCSTR lpModuleName
    );
__declspec(dllimport)
HMODULE
__stdcall
GetModuleHandleW(
    LPCWSTR lpModuleName
    );




#line 4241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateProcessA(
    LPCSTR lpApplicationName,
    LPSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCSTR lpCurrentDirectory,
    LPSTARTUPINFOA lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessW(
    LPCWSTR lpApplicationName,
    LPWSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCWSTR lpCurrentDirectory,
    LPSTARTUPINFOW lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );




#line 4277 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetProcessShutdownParameters(
    DWORD dwLevel,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessShutdownParameters(
    LPDWORD lpdwLevel,
    LPDWORD lpdwFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetProcessVersion(
    DWORD ProcessId
    );

__declspec(dllimport)
void
__stdcall
FatalAppExitA(
    UINT uAction,
    LPCSTR lpMessageText
    );
__declspec(dllimport)
void
__stdcall
FatalAppExitW(
    UINT uAction,
    LPCWSTR lpMessageText
    );




#line 4320 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
GetStartupInfoA(
    LPSTARTUPINFOA lpStartupInfo
    );
__declspec(dllimport)
void
__stdcall
GetStartupInfoW(
    LPSTARTUPINFOW lpStartupInfo
    );




#line 4338 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
LPSTR
__stdcall
GetCommandLineA(
    void
    );
__declspec(dllimport)
LPWSTR
__stdcall
GetCommandLineW(
    void
    );




#line 4356 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableA(
    LPCSTR lpName,
    LPSTR lpBuffer,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableW(
    LPCWSTR lpName,
    LPWSTR lpBuffer,
    DWORD nSize
    );




#line 4378 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableA(
    LPCSTR lpName,
    LPCSTR lpValue
    );
__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableW(
    LPCWSTR lpName,
    LPCWSTR lpValue
    );




#line 4398 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsA(
    LPCSTR lpSrc,
    LPSTR lpDst,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsW(
    LPCWSTR lpSrc,
    LPWSTR lpDst,
    DWORD nSize
    );




#line 4420 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
OutputDebugStringA(
    LPCSTR lpOutputString
    );
__declspec(dllimport)
void
__stdcall
OutputDebugStringW(
    LPCWSTR lpOutputString
    );




#line 4438 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HRSRC
__stdcall
FindResourceA(
    HMODULE hModule,
    LPCSTR lpName,
    LPCSTR lpType
    );
__declspec(dllimport)
HRSRC
__stdcall
FindResourceW(
    HMODULE hModule,
    LPCWSTR lpName,
    LPCWSTR lpType
    );




#line 4460 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HRSRC
__stdcall
FindResourceExA(
    HMODULE hModule,
    LPCSTR lpType,
    LPCSTR lpName,
    WORD    wLanguage
    );
__declspec(dllimport)
HRSRC
__stdcall
FindResourceExW(
    HMODULE hModule,
    LPCWSTR lpType,
    LPCWSTR lpName,
    WORD    wLanguage
    );




#line 4484 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


typedef BOOL (__stdcall* ENUMRESTYPEPROC)(HMODULE hModule, LPTSTR lpType,
        LONG lParam);
typedef BOOL (__stdcall* ENUMRESNAMEPROC)(HMODULE hModule, LPCTSTR lpType,
        LPTSTR lpName, LONG lParam);
typedef BOOL (__stdcall* ENUMRESLANGPROC)(HMODULE hModule, LPCTSTR lpType,
        LPCTSTR lpName, WORD  wLanguage, LONG lParam);




#line 4497 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesA(
    HMODULE hModule,
    ENUMRESTYPEPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesW(
    HMODULE hModule,
    ENUMRESTYPEPROC lpEnumFunc,
    LONG lParam
    );




#line 4519 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesA(
    HMODULE hModule,
    LPCSTR lpType,
    ENUMRESNAMEPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesW(
    HMODULE hModule,
    LPCWSTR lpType,
    ENUMRESNAMEPROC lpEnumFunc,
    LONG lParam
    );




#line 4544 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesA(
    HMODULE hModule,
    LPCSTR lpType,
    LPCSTR lpName,
    ENUMRESLANGPROC lpEnumFunc,
    LONG lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesW(
    HMODULE hModule,
    LPCWSTR lpType,
    LPCWSTR lpName,
    ENUMRESLANGPROC lpEnumFunc,
    LONG lParam
    );




#line 4570 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
BeginUpdateResourceA(
    LPCSTR pFileName,
    BOOL bDeleteExistingResources
    );
__declspec(dllimport)
HANDLE
__stdcall
BeginUpdateResourceW(
    LPCWSTR pFileName,
    BOOL bDeleteExistingResources
    );




#line 4590 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
UpdateResourceA(
    HANDLE      hUpdate,
    LPCSTR     lpType,
    LPCSTR     lpName,
    WORD        wLanguage,
    LPVOID      lpData,
    DWORD       cbData
    );
__declspec(dllimport)
BOOL
__stdcall
UpdateResourceW(
    HANDLE      hUpdate,
    LPCWSTR     lpType,
    LPCWSTR     lpName,
    WORD        wLanguage,
    LPVOID      lpData,
    DWORD       cbData
    );




#line 4618 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceA(
    HANDLE      hUpdate,
    BOOL        fDiscard
    );
__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceW(
    HANDLE      hUpdate,
    BOOL        fDiscard
    );




#line 4638 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
GlobalAddAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
GlobalAddAtomW(
    LPCWSTR lpString
    );




#line 4656 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
GlobalFindAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
GlobalFindAtomW(
    LPCWSTR lpString
    );




#line 4674 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameA(
    ATOM nAtom,
    LPSTR lpBuffer,
    int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameW(
    ATOM nAtom,
    LPWSTR lpBuffer,
    int nSize
    );




#line 4696 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
AddAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
AddAtomW(
    LPCWSTR lpString
    );




#line 4714 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
ATOM
__stdcall
FindAtomA(
    LPCSTR lpString
    );
__declspec(dllimport)
ATOM
__stdcall
FindAtomW(
    LPCWSTR lpString
    );




#line 4732 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetAtomNameA(
    ATOM nAtom,
    LPSTR lpBuffer,
    int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GetAtomNameW(
    ATOM nAtom,
    LPWSTR lpBuffer,
    int nSize
    );




#line 4754 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetProfileIntA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    INT nDefault
    );
__declspec(dllimport)
UINT
__stdcall
GetProfileIntW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    INT nDefault
    );




#line 4776 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpDefault,
    LPSTR lpReturnedString,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpDefault,
    LPWSTR lpReturnedString,
    DWORD nSize
    );




#line 4802 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpString
    );




#line 4824 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionA(
    LPCSTR lpAppName,
    LPSTR lpReturnedString,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionW(
    LPCWSTR lpAppName,
    LPWSTR lpReturnedString,
    DWORD nSize
    );




#line 4846 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionA(
    LPCSTR lpAppName,
    LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionW(
    LPCWSTR lpAppName,
    LPCWSTR lpString
    );




#line 4866 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    INT nDefault,
    LPCSTR lpFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    INT nDefault,
    LPCWSTR lpFileName
    );




#line 4890 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpDefault,
    LPSTR lpReturnedString,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpDefault,
    LPWSTR lpReturnedString,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 4918 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringA(
    LPCSTR lpAppName,
    LPCSTR lpKeyName,
    LPCSTR lpString,
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringW(
    LPCWSTR lpAppName,
    LPCWSTR lpKeyName,
    LPCWSTR lpString,
    LPCWSTR lpFileName
    );




#line 4942 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionA(
    LPCSTR lpAppName,
    LPSTR lpReturnedString,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionW(
    LPCWSTR lpAppName,
    LPWSTR lpReturnedString,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 4966 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionA(
    LPCSTR lpAppName,
    LPCSTR lpString,
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionW(
    LPCWSTR lpAppName,
    LPCWSTR lpString,
    LPCWSTR lpFileName
    );




#line 4988 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesA(
    LPSTR lpszReturnBuffer,
    DWORD nSize,
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesW(
    LPWSTR lpszReturnBuffer,
    DWORD nSize,
    LPCWSTR lpFileName
    );




#line 5011 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructA(
    LPCSTR lpszSection,
    LPCSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructW(
    LPCWSTR lpszSection,
    LPCWSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCWSTR szFile
    );




#line 5037 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructA(
    LPCSTR lpszSection,
    LPCSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructW(
    LPCWSTR lpszSection,
    LPCWSTR lpszKey,
    LPVOID   lpStruct,
    UINT     uSizeStruct,
    LPCWSTR szFile
    );




#line 5063 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
UINT
__stdcall
GetDriveTypeA(
    LPCSTR lpRootPathName
    );
__declspec(dllimport)
UINT
__stdcall
GetDriveTypeW(
    LPCWSTR lpRootPathName
    );




#line 5082 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryA(
    LPSTR lpBuffer,
    UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryW(
    LPWSTR lpBuffer,
    UINT uSize
    );




#line 5102 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetTempPathA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetTempPathW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 5122 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetTempFileNameA(
    LPCSTR lpPathName,
    LPCSTR lpPrefixString,
    UINT uUnique,
    LPSTR lpTempFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetTempFileNameW(
    LPCWSTR lpPathName,
    LPCWSTR lpPrefixString,
    UINT uUnique,
    LPWSTR lpTempFileName
    );




#line 5146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryA(
    LPSTR lpBuffer,
    UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryW(
    LPWSTR lpBuffer,
    UINT uSize
    );




#line 5166 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryA(
    LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryW(
    LPCWSTR lpPathName
    );




#line 5184 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryA(
    DWORD nBufferLength,
    LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryW(
    DWORD nBufferLength,
    LPWSTR lpBuffer
    );




#line 5204 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceA(
    LPCSTR lpRootPathName,
    LPDWORD lpSectorsPerCluster,
    LPDWORD lpBytesPerSector,
    LPDWORD lpNumberOfFreeClusters,
    LPDWORD lpTotalNumberOfClusters
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceW(
    LPCWSTR lpRootPathName,
    LPDWORD lpSectorsPerCluster,
    LPDWORD lpBytesPerSector,
    LPDWORD lpNumberOfFreeClusters,
    LPDWORD lpTotalNumberOfClusters
    );




#line 5230 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExA(
    LPCSTR lpDirectoryName,
    PULARGE_INTEGER lpFreeBytesAvailableToCaller,
    PULARGE_INTEGER lpTotalNumberOfBytes,
    PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExW(
    LPCWSTR lpDirectoryName,
    PULARGE_INTEGER lpFreeBytesAvailableToCaller,
    PULARGE_INTEGER lpTotalNumberOfBytes,
    PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );




#line 5254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryA(
    LPCSTR lpPathName,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryW(
    LPCWSTR lpPathName,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5274 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExA(
    LPCSTR lpTemplateDirectory,
    LPCSTR lpNewDirectory,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExW(
    LPCWSTR lpTemplateDirectory,
    LPCWSTR lpNewDirectory,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryA(
    LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryW(
    LPCWSTR lpPathName
    );




#line 5314 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameA(
    LPCSTR lpFileName,
    DWORD nBufferLength,
    LPSTR lpBuffer,
    LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameW(
    LPCWSTR lpFileName,
    DWORD nBufferLength,
    LPWSTR lpBuffer,
    LPWSTR *lpFilePart
    );




#line 5338 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"







__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceA(
    DWORD dwFlags,
    LPCSTR lpDeviceName,
    LPCSTR lpTargetPath
    );
__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceW(
    DWORD dwFlags,
    LPCWSTR lpDeviceName,
    LPCWSTR lpTargetPath
    );




#line 5366 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceA(
    LPCSTR lpDeviceName,
    LPSTR lpTargetPath,
    DWORD ucchMax
    );
__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceW(
    LPCWSTR lpDeviceName,
    LPWSTR lpTargetPath,
    DWORD ucchMax
    );




#line 5388 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



__declspec(dllimport)
HANDLE
__stdcall
CreateFileA(
    LPCSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateFileW(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
    );




#line 5420 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesA(
    LPCSTR lpFileName,
    DWORD dwFileAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesW(
    LPCWSTR lpFileName,
    DWORD dwFileAttributes
    );




#line 5440 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesW(
    LPCWSTR lpFileName
    );




#line 5458 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

typedef enum _GET_FILEEX_INFO_LEVELS {
    GetFileExInfoStandard,
    GetFileExMaxInfoLevel
} GET_FILEEX_INFO_LEVELS;

__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExA(
    LPCSTR lpFileName,
    GET_FILEEX_INFO_LEVELS fInfoLevelId,
    LPVOID lpFileInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExW(
    LPCWSTR lpFileName,
    GET_FILEEX_INFO_LEVELS fInfoLevelId,
    LPVOID lpFileInformation
    );




#line 5485 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeA(
    LPCSTR lpFileName,
    LPDWORD lpFileSizeHigh
    );
__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeW(
    LPCWSTR lpFileName,
    LPDWORD lpFileSizeHigh
    );




#line 5505 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DeleteFileA(
    LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
DeleteFileW(
    LPCWSTR lpFileName
    );




#line 5523 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"











































#line 5567 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
FindFirstFileA(
    LPCSTR lpFileName,
    LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
HANDLE
__stdcall
FindFirstFileW(
    LPCWSTR lpFileName,
    LPWIN32_FIND_DATAW lpFindFileData
    );




#line 5587 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindNextFileA(
    HANDLE hFindFile,
    LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
BOOL
__stdcall
FindNextFileW(
    HANDLE hFindFile,
    LPWIN32_FIND_DATAW lpFindFileData
    );




#line 5607 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
DWORD
__stdcall
SearchPathA(
    LPCSTR lpPath,
    LPCSTR lpFileName,
    LPCSTR lpExtension,
    DWORD nBufferLength,
    LPSTR lpBuffer,
    LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
SearchPathW(
    LPCWSTR lpPath,
    LPCWSTR lpFileName,
    LPCWSTR lpExtension,
    DWORD nBufferLength,
    LPWSTR lpBuffer,
    LPWSTR *lpFilePart
    );




#line 5635 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CopyFileA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName,
    BOOL bFailIfExists
    );
__declspec(dllimport)
BOOL
__stdcall
CopyFileW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName,
    BOOL bFailIfExists
    );




#line 5657 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"











































#line 5701 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
MoveFileA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName
    );




#line 5721 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
MoveFileExA(
    LPCSTR lpExistingFileName,
    LPCSTR lpNewFileName,
    DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileExW(
    LPCWSTR lpExistingFileName,
    LPCWSTR lpNewFileName,
    DWORD dwFlags
    );




#line 5743 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



























#line 5771 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"








#line 5780 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





























#line 5810 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
HANDLE
__stdcall
CreateNamedPipeA(
    LPCSTR lpName,
    DWORD dwOpenMode,
    DWORD dwPipeMode,
    DWORD nMaxInstances,
    DWORD nOutBufferSize,
    DWORD nInBufferSize,
    DWORD nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
HANDLE
__stdcall
CreateNamedPipeW(
    LPCWSTR lpName,
    DWORD dwOpenMode,
    DWORD dwPipeMode,
    DWORD nMaxInstances,
    DWORD nOutBufferSize,
    DWORD nInBufferSize,
    DWORD nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 5843 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateA(
    HANDLE hNamedPipe,
    LPDWORD lpState,
    LPDWORD lpCurInstances,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout,
    LPSTR lpUserName,
    DWORD nMaxUserNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateW(
    HANDLE hNamedPipe,
    LPDWORD lpState,
    LPDWORD lpCurInstances,
    LPDWORD lpMaxCollectionCount,
    LPDWORD lpCollectDataTimeout,
    LPWSTR lpUserName,
    DWORD nMaxUserNameSize
    );




#line 5873 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeA(
    LPCSTR lpNamedPipeName,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeW(
    LPCWSTR lpNamedPipeName,
    LPVOID lpInBuffer,
    DWORD nInBufferSize,
    LPVOID lpOutBuffer,
    DWORD nOutBufferSize,
    LPDWORD lpBytesRead,
    DWORD nTimeOut
    );




#line 5903 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeA(
    LPCSTR lpNamedPipeName,
    DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeW(
    LPCWSTR lpNamedPipeName,
    DWORD nTimeOut
    );




#line 5923 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelA(
    LPCSTR lpRootPathName,
    LPCSTR lpVolumeName
    );
__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelW(
    LPCWSTR lpRootPathName,
    LPCWSTR lpVolumeName
    );




#line 5943 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
void
__stdcall
SetFileApisToOEM( void );

__declspec(dllimport)
void
__stdcall
SetFileApisToANSI( void );

__declspec(dllimport)
BOOL
__stdcall
AreFileApisANSI( void );

__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationA(
    LPCSTR lpRootPathName,
    LPSTR lpVolumeNameBuffer,
    DWORD nVolumeNameSize,
    LPDWORD lpVolumeSerialNumber,
    LPDWORD lpMaximumComponentLength,
    LPDWORD lpFileSystemFlags,
    LPSTR lpFileSystemNameBuffer,
    DWORD nFileSystemNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationW(
    LPCWSTR lpRootPathName,
    LPWSTR lpVolumeNameBuffer,
    DWORD nVolumeNameSize,
    LPDWORD lpVolumeSerialNumber,
    LPDWORD lpMaximumComponentLength,
    LPDWORD lpFileSystemFlags,
    LPWSTR lpFileSystemNameBuffer,
    DWORD nFileSystemNameSize
    );




#line 5990 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CancelIo(
    HANDLE hFile
    );





__declspec(dllimport)
BOOL
__stdcall
ClearEventLogA (
    HANDLE hEventLog,
    LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
ClearEventLogW (
    HANDLE hEventLog,
    LPCWSTR lpBackupFileName
    );




#line 6021 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
BackupEventLogA (
    HANDLE hEventLog,
    LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
BackupEventLogW (
    HANDLE hEventLog,
    LPCWSTR lpBackupFileName
    );




#line 6041 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CloseEventLog (
    HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
DeregisterEventSource (
    HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
NotifyChangeEventLog(
    HANDLE  hEventLog,
    HANDLE  hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfEventLogRecords (
    HANDLE hEventLog,
    PDWORD NumberOfRecords
    );

__declspec(dllimport)
BOOL
__stdcall
GetOldestEventLogRecord (
    HANDLE hEventLog,
    PDWORD OldestRecord
    );

__declspec(dllimport)
HANDLE
__stdcall
OpenEventLogA (
    LPCSTR lpUNCServerName,
    LPCSTR lpSourceName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenEventLogW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpSourceName
    );




#line 6099 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
RegisterEventSourceA (
    LPCSTR lpUNCServerName,
    LPCSTR lpSourceName
    );
__declspec(dllimport)
HANDLE
__stdcall
RegisterEventSourceW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpSourceName
    );




#line 6119 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
HANDLE
__stdcall
OpenBackupEventLogA (
    LPCSTR lpUNCServerName,
    LPCSTR lpFileName
    );
__declspec(dllimport)
HANDLE
__stdcall
OpenBackupEventLogW (
    LPCWSTR lpUNCServerName,
    LPCWSTR lpFileName
    );




#line 6139 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReadEventLogA (
     HANDLE     hEventLog,
     DWORD      dwReadFlags,
     DWORD      dwRecordOffset,
     LPVOID     lpBuffer,
     DWORD      nNumberOfBytesToRead,
     DWORD      *pnBytesRead,
     DWORD      *pnMinNumberOfBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
ReadEventLogW (
     HANDLE     hEventLog,
     DWORD      dwReadFlags,
     DWORD      dwRecordOffset,
     LPVOID     lpBuffer,
     DWORD      nNumberOfBytesToRead,
     DWORD      *pnBytesRead,
     DWORD      *pnMinNumberOfBytesNeeded
    );




#line 6169 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ReportEventA (
     HANDLE     hEventLog,
     WORD       wType,
     WORD       wCategory,
     DWORD      dwEventID,
     PSID       lpUserSid,
     WORD       wNumStrings,
     DWORD      dwDataSize,
     LPCSTR   *lpStrings,
     LPVOID     lpRawData
    );
__declspec(dllimport)
BOOL
__stdcall
ReportEventW (
     HANDLE     hEventLog,
     WORD       wType,
     WORD       wCategory,
     DWORD      dwEventID,
     PSID       lpUserSid,
     WORD       wNumStrings,
     DWORD      dwDataSize,
     LPCWSTR   *lpStrings,
     LPVOID     lpRawData
    );




#line 6203 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"







__declspec(dllimport)
BOOL
__stdcall
DuplicateToken(
    HANDLE ExistingTokenHandle,
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
    PHANDLE DuplicateTokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
GetKernelObjectSecurity (
    HANDLE Handle,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateNamedPipeClient(
    HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateSelf(
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel
    );


__declspec(dllimport)
BOOL
__stdcall
RevertToSelf (
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadToken (
    PHANDLE Thread,
    HANDLE Token
    );

__declspec(dllimport)
BOOL
__stdcall
AccessCheck (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    PPRIVILEGE_SET PrivilegeSet,
    LPDWORD PrivilegeSetLength,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus
    );



































#line 6309 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
OpenProcessToken (
    HANDLE ProcessHandle,
    DWORD DesiredAccess,
    PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
OpenThreadToken (
    HANDLE ThreadHandle,
    DWORD DesiredAccess,
    BOOL OpenAsSelf,
    PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
GetTokenInformation (
    HANDLE TokenHandle,
    TOKEN_INFORMATION_CLASS TokenInformationClass,
    LPVOID TokenInformation,
    DWORD TokenInformationLength,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
SetTokenInformation (
    HANDLE TokenHandle,
    TOKEN_INFORMATION_CLASS TokenInformationClass,
    LPVOID TokenInformation,
    DWORD TokenInformationLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenPrivileges (
    HANDLE TokenHandle,
    BOOL DisableAllPrivileges,
    PTOKEN_PRIVILEGES NewState,
    DWORD BufferLength,
    PTOKEN_PRIVILEGES PreviousState,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenGroups (
    HANDLE TokenHandle,
    BOOL ResetToDefault,
    PTOKEN_GROUPS NewState,
    DWORD BufferLength,
    PTOKEN_GROUPS PreviousState,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
PrivilegeCheck (
    HANDLE ClientToken,
    PPRIVILEGE_SET RequiredPrivileges,
    LPBOOL pfResult
    );


__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    LPSTR ObjectTypeName,
    LPSTR ObjectName,
    PSECURITY_DESCRIPTOR SecurityDescriptor,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    BOOL ObjectCreation,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus,
    LPBOOL pfGenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    LPWSTR ObjectTypeName,
    LPWSTR ObjectName,
    PSECURITY_DESCRIPTOR SecurityDescriptor,
    DWORD DesiredAccess,
    PGENERIC_MAPPING GenericMapping,
    BOOL ObjectCreation,
    LPDWORD GrantedAccess,
    LPBOOL AccessStatus,
    LPBOOL pfGenerateOnClose
    );




#line 6428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



































































































#line 6528 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    LPSTR ObjectTypeName,
    LPSTR ObjectName,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    DWORD GrantedAccess,
    PPRIVILEGE_SET Privileges,
    BOOL ObjectCreation,
    BOOL AccessGranted,
    LPBOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    LPWSTR ObjectTypeName,
    LPWSTR ObjectName,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    DWORD GrantedAccess,
    PPRIVILEGE_SET Privileges,
    BOOL ObjectCreation,
    BOOL AccessGranted,
    LPBOOL GenerateOnClose
    );




#line 6569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    HANDLE ClientToken,
    DWORD DesiredAccess,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );




#line 6598 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );




#line 6621 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmA (
    LPCSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmW (
    LPCWSTR SubsystemName,
    LPVOID HandleId,
    BOOL GenerateOnClose
    );




#line 6644 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmA (
    LPCSTR SubsystemName,
    LPCSTR ServiceName,
    HANDLE ClientToken,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmW (
    LPCWSTR SubsystemName,
    LPCWSTR ServiceName,
    HANDLE ClientToken,
    PPRIVILEGE_SET Privileges,
    BOOL AccessGranted
    );




#line 6671 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
IsValidSid (
    PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
EqualSid (
    PSID pSid1,
    PSID pSid2
    );


__declspec(dllimport)
BOOL
__stdcall
EqualPrefixSid (
    PSID pSid1,
    PSID pSid2
    );


__declspec(dllimport)
DWORD
__stdcall
GetSidLengthRequired (
    UCHAR nSubAuthorityCount
    );


__declspec(dllimport)
BOOL
__stdcall
AllocateAndInitializeSid (
    PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
    BYTE nSubAuthorityCount,
    DWORD nSubAuthority0,
    DWORD nSubAuthority1,
    DWORD nSubAuthority2,
    DWORD nSubAuthority3,
    DWORD nSubAuthority4,
    DWORD nSubAuthority5,
    DWORD nSubAuthority6,
    DWORD nSubAuthority7,
    PSID *pSid
    );

__declspec(dllimport)
PVOID
__stdcall
FreeSid(
    PSID pSid
    );

__declspec(dllimport)
BOOL
__stdcall
InitializeSid (
    PSID Sid,
    PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
    BYTE nSubAuthorityCount
    );


__declspec(dllimport)
PSID_IDENTIFIER_AUTHORITY
__stdcall
GetSidIdentifierAuthority (
    PSID pSid
    );


__declspec(dllimport)
PDWORD
__stdcall
GetSidSubAuthority (
    PSID pSid,
    DWORD nSubAuthority
    );


__declspec(dllimport)
PUCHAR
__stdcall
GetSidSubAuthorityCount (
    PSID pSid
    );


__declspec(dllimport)
DWORD
__stdcall
GetLengthSid (
    PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
CopySid (
    DWORD nDestinationSidLength,
    PSID pDestinationSid,
    PSID pSourceSid
    );


__declspec(dllimport)
BOOL
__stdcall
AreAllAccessesGranted (
    DWORD GrantedAccess,
    DWORD DesiredAccess
    );


__declspec(dllimport)
BOOL
__stdcall
AreAnyAccessesGranted (
    DWORD GrantedAccess,
    DWORD DesiredAccess
    );


__declspec(dllimport)
void
__stdcall
MapGenericMask (
    PDWORD AccessMask,
    PGENERIC_MAPPING GenericMapping
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidAcl (
    PACL pAcl
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeAcl (
    PACL pAcl,
    DWORD nAclLength,
    DWORD dwAclRevision
    );


__declspec(dllimport)
BOOL
__stdcall
GetAclInformation (
    PACL pAcl,
    LPVOID pAclInformation,
    DWORD nAclInformationLength,
    ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
SetAclInformation (
    PACL pAcl,
    LPVOID pAclInformation,
    DWORD nAclInformationLength,
    ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
AddAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD dwStartingAceIndex,
    LPVOID pAceList,
    DWORD nAceListLength
    );


__declspec(dllimport)
BOOL
__stdcall
DeleteAce (
    PACL pAcl,
    DWORD dwAceIndex
    );


__declspec(dllimport)
BOOL
__stdcall
GetAce (
    PACL pAcl,
    DWORD dwAceIndex,
    LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
AddAccessAllowedAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD AccessMask,
    PSID pSid
    );












#line 6904 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
AddAccessDeniedAce (
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD AccessMask,
    PSID pSid
    );












#line 6928 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
AddAuditAccessAce(
    PACL pAcl,
    DWORD dwAceRevision,
    DWORD dwAccessMask,
    PSID pSid,
    BOOL bAuditSuccess,
    BOOL bAuditFailure
    );























































#line 6996 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindFirstFreeAce (
    PACL pAcl,
    LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeSecurityDescriptor (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD dwRevision
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidSecurityDescriptor (
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
DWORD
__stdcall
GetSecurityDescriptorLength (
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorControl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSECURITY_DESCRIPTOR_CONTROL pControl,
    LPDWORD lpdwRevision
    );










#line 7050 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorDacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    BOOL bDaclPresent,
    PACL pDacl,
    BOOL bDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorDacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPBOOL lpbDaclPresent,
    PACL *pDacl,
    LPBOOL lpbDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorSacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    BOOL bSaclPresent,
    PACL pSacl,
    BOOL bSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorSacl (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPBOOL lpbSaclPresent,
    PACL *pSacl,
    LPBOOL lpbSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorOwner (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID pOwner,
    BOOL bOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorOwner (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID *pOwner,
    LPBOOL lpbOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorGroup (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID pGroup,
    BOOL bGroupDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorGroup (
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    PSID *pGroup,
    LPBOOL lpbGroupDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
CreatePrivateObjectSecurity (
    PSECURITY_DESCRIPTOR ParentDescriptor,
    PSECURITY_DESCRIPTOR CreatorDescriptor,
    PSECURITY_DESCRIPTOR * NewDescriptor,
    BOOL IsDirectoryObject,
    HANDLE Token,
    PGENERIC_MAPPING GenericMapping
    );




























#line 7175 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetPrivateObjectSecurity (
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR ModificationDescriptor,
    PSECURITY_DESCRIPTOR *ObjectsSecurityDescriptor,
    PGENERIC_MAPPING GenericMapping,
    HANDLE Token
    );













#line 7200 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetPrivateObjectSecurity (
    PSECURITY_DESCRIPTOR ObjectDescriptor,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR ResultantDescriptor,
    DWORD DescriptorLength,
    PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
DestroyPrivateObjectSecurity (
    PSECURITY_DESCRIPTOR * ObjectDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
MakeSelfRelativeSD (
    PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
    PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
    LPDWORD lpdwBufferLength
    );


__declspec(dllimport)
BOOL
__stdcall
MakeAbsoluteSD (
    PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
    PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
    LPDWORD lpdwAbsoluteSecurityDescriptorSize,
    PACL pDacl,
    LPDWORD lpdwDaclSize,
    PACL pSacl,
    LPDWORD lpdwSaclSize,
    PSID pOwner,
    LPDWORD lpdwOwnerSize,
    PSID pPrimaryGroup,
    LPDWORD lpdwPrimaryGroupSize
    );


__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityA (
    LPCSTR lpFileName,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityW (
    LPCWSTR lpFileName,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );




#line 7270 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityA (
    LPCSTR lpFileName,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityW (
    LPCWSTR lpFileName,
    SECURITY_INFORMATION RequestedInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    DWORD nLength,
    LPDWORD lpnLengthNeeded
    );




#line 7297 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


__declspec(dllimport)
BOOL
__stdcall
SetKernelObjectSecurity (
    HANDLE Handle,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR SecurityDescriptor
    );



__declspec(dllimport)
HANDLE
__stdcall
FindFirstChangeNotificationA(
    LPCSTR lpPathName,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter
    );
__declspec(dllimport)
HANDLE
__stdcall
FindFirstChangeNotificationW(
    LPCWSTR lpPathName,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter
    );




#line 7331 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
FindNextChangeNotification(
    HANDLE hChangeHandle
    );

__declspec(dllimport)
BOOL
__stdcall
FindCloseChangeNotification(
    HANDLE hChangeHandle
    );















#line 7361 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
VirtualLock(
    LPVOID lpAddress,
    DWORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualUnlock(
    LPVOID lpAddress,
    DWORD dwSize
    );

__declspec(dllimport)
LPVOID
__stdcall
MapViewOfFileEx(
    HANDLE hFileMappingObject,
    DWORD dwDesiredAccess,
    DWORD dwFileOffsetHigh,
    DWORD dwFileOffsetLow,
    DWORD dwNumberOfBytesToMap,
    LPVOID lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
SetPriorityClass(
    HANDLE hProcess,
    DWORD dwPriorityClass
    );

__declspec(dllimport)
DWORD
__stdcall
GetPriorityClass(
    HANDLE hProcess
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadReadPtr(
    const void *lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadWritePtr(
    LPVOID lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeReadPtr(
    const void *lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeWritePtr(
    LPVOID lp,
    UINT ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadCodePtr(
    FARPROC lpfn
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrA(
    LPCSTR lpsz,
    UINT ucchMax
    );
__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrW(
    LPCWSTR lpsz,
    UINT ucchMax
    );




#line 7463 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidA(
    LPCSTR lpSystemName,
    PSID Sid,
    LPSTR Name,
    LPDWORD cbName,
    LPSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidW(
    LPCWSTR lpSystemName,
    PSID Sid,
    LPWSTR Name,
    LPDWORD cbName,
    LPWSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );




#line 7493 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameA(
    LPCSTR lpSystemName,
    LPCSTR lpAccountName,
    PSID Sid,
    LPDWORD cbSid,
    LPSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameW(
    LPCWSTR lpSystemName,
    LPCWSTR lpAccountName,
    PSID Sid,
    LPDWORD cbSid,
    LPWSTR ReferencedDomainName,
    LPDWORD cbReferencedDomainName,
    PSID_NAME_USE peUse
    );




#line 7523 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueA(
    LPCSTR lpSystemName,
    LPCSTR lpName,
    PLUID   lpLuid
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueW(
    LPCWSTR lpSystemName,
    LPCWSTR lpName,
    PLUID   lpLuid
    );




#line 7545 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameA(
    LPCSTR lpSystemName,
    PLUID   lpLuid,
    LPSTR lpName,
    LPDWORD cbName
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameW(
    LPCWSTR lpSystemName,
    PLUID   lpLuid,
    LPWSTR lpName,
    LPDWORD cbName
    );




#line 7569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameA(
    LPCSTR lpSystemName,
    LPCSTR lpName,
    LPSTR lpDisplayName,
    LPDWORD cbDisplayName,
    LPDWORD lpLanguageId
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameW(
    LPCWSTR lpSystemName,
    LPCWSTR lpName,
    LPWSTR lpDisplayName,
    LPDWORD cbDisplayName,
    LPDWORD lpLanguageId
    );




#line 7595 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
AllocateLocallyUniqueId(
    PLUID Luid
    );

__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBA(
    LPCSTR lpDef,
    LPDCB lpDCB
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBW(
    LPCWSTR lpDef,
    LPDCB lpDCB
    );




#line 7622 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsA(
    LPCSTR lpDef,
    LPDCB lpDCB,
    LPCOMMTIMEOUTS lpCommTimeouts
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsW(
    LPCWSTR lpDef,
    LPDCB lpDCB,
    LPCOMMTIMEOUTS lpCommTimeouts
    );




#line 7644 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogA(
    LPCSTR lpszName,
    HWND hWnd,
    LPCOMMCONFIG lpCC
    );
__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogW(
    LPCWSTR lpszName,
    HWND hWnd,
    LPCOMMCONFIG lpCC
    );




#line 7666 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigA(
    LPCSTR lpszName,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigW(
    LPCWSTR lpszName,
    LPCOMMCONFIG lpCC,
    LPDWORD lpdwSize
    );




#line 7688 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigA(
    LPCSTR lpszName,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );
__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigW(
    LPCWSTR lpszName,
    LPCOMMCONFIG lpCC,
    DWORD dwSize
    );




#line 7710 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





#line 7716 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetComputerNameA (
    LPSTR lpBuffer,
    LPDWORD nSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetComputerNameW (
    LPWSTR lpBuffer,
    LPDWORD nSize
    );




#line 7736 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
SetComputerNameA (
    LPCSTR lpComputerName
    );
__declspec(dllimport)
BOOL
__stdcall
SetComputerNameW (
    LPCWSTR lpComputerName
    );




#line 7754 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
GetUserNameA (
    LPSTR lpBuffer,
    LPDWORD nSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetUserNameW (
    LPWSTR lpBuffer,
    LPDWORD nSize
    );




#line 7774 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"














#line 7789 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


#line 7792 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



__declspec(dllimport)
BOOL
__stdcall
LogonUserA (
    LPSTR lpszUsername,
    LPSTR lpszDomain,
    LPSTR lpszPassword,
    DWORD dwLogonType,
    DWORD dwLogonProvider,
    PHANDLE phToken
    );
__declspec(dllimport)
BOOL
__stdcall
LogonUserW (
    LPWSTR lpszUsername,
    LPWSTR lpszDomain,
    LPWSTR lpszPassword,
    DWORD dwLogonType,
    DWORD dwLogonProvider,
    PHANDLE phToken
    );




#line 7822 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
ImpersonateLoggedOnUser(
    HANDLE  hToken
    );

__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserA (
    HANDLE hToken,
    LPCSTR lpApplicationName,
    LPSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCSTR lpCurrentDirectory,
    LPSTARTUPINFOA lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserW (
    HANDLE hToken,
    LPCWSTR lpApplicationName,
    LPWSTR lpCommandLine,
    LPSECURITY_ATTRIBUTES lpProcessAttributes,
    LPSECURITY_ATTRIBUTES lpThreadAttributes,
    BOOL bInheritHandles,
    DWORD dwCreationFlags,
    LPVOID lpEnvironment,
    LPCWSTR lpCurrentDirectory,
    LPSTARTUPINFOW lpStartupInfo,
    LPPROCESS_INFORMATION lpProcessInformation
    );




#line 7867 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

__declspec(dllimport)
BOOL
__stdcall
DuplicateTokenEx(
    HANDLE hExistingToken,
    DWORD dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpTokenAttributes,
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
    TOKEN_TYPE TokenType,
    PHANDLE phNewToken);

__declspec(dllimport)
BOOL
__stdcall
CreateRestrictedToken(
     HANDLE ExistingTokenHandle,
     DWORD Flags,
     DWORD DisableSidCount,
     PSID_AND_ATTRIBUTES SidsToDisable ,
     DWORD DeletePrivilegeCount,
     PLUID_AND_ATTRIBUTES PrivilegesToDelete ,
     DWORD RestrictedSidCount,
     PSID_AND_ATTRIBUTES SidsToRestrict ,
     PHANDLE NewTokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
IsTokenRestricted(
     HANDLE TokenHandle
    );




















































#line 7953 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceCounter(
    LARGE_INTEGER *lpPerformanceCount
    );

__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceFrequency(
    LARGE_INTEGER *lpFrequency
    );

typedef struct _OSVERSIONINFOA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
} OSVERSIONINFOA, *POSVERSIONINFOA, *LPOSVERSIONINFOA;
typedef struct _OSVERSIONINFOW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
} OSVERSIONINFOW, *POSVERSIONINFOW, *LPOSVERSIONINFOW;

typedef OSVERSIONINFOW OSVERSIONINFO;
typedef POSVERSIONINFOW POSVERSIONINFO;
typedef LPOSVERSIONINFOW LPOSVERSIONINFO;




#line 7997 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

typedef struct _OSVERSIONINFOEXA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
    WORD wServicePackMajor;
    WORD wServicePackMinor;
    WORD wReserved[2];
} OSVERSIONINFOEXA, *POSVERSIONINFOEXA, *LPOSVERSIONINFOEXA;
typedef struct _OSVERSIONINFOEXW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
    WORD wServicePackMajor;
    WORD wServicePackMinor;
    WORD wReserved[2];
} OSVERSIONINFOEXW, *POSVERSIONINFOEXW, *LPOSVERSIONINFOEXW;

typedef OSVERSIONINFOEXW OSVERSIONINFOEX;
typedef POSVERSIONINFOEXW POSVERSIONINFOEX;
typedef LPOSVERSIONINFOEXW LPOSVERSIONINFOEX;




#line 8029 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"










__declspec(dllimport)
BOOL
__stdcall
GetVersionExA(
    LPOSVERSIONINFOA lpVersionInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetVersionExW(
    LPOSVERSIONINFOW lpVersionInformation
    );




#line 8056 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"






#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"



















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 8021 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"


























































































































































































#line 8208 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"

































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
 
 
 
 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 12937 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"
#line 8063 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"





























typedef struct _SYSTEM_POWER_STATUS {
    BYTE ACLineStatus;
    BYTE BatteryFlag;
    BYTE BatteryLifePercent;
    BYTE Reserved1;
    DWORD BatteryLifeTime;
    DWORD BatteryFullLifeTime;
}   SYSTEM_POWER_STATUS, *LPSYSTEM_POWER_STATUS;

BOOL
__stdcall
GetSystemPowerStatus(
    LPSYSTEM_POWER_STATUS lpSystemPowerStatus
    );

BOOL
__stdcall
SetSystemPowerState(
    BOOL fSuspend,
    BOOL fForce
    );

#line 8115 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"











typedef struct _WIN_CERTIFICATE {
    DWORD       dwLength;
    WORD        wRevision;
    WORD        wCertificateType;   
    BYTE        bCertificate[1];
} WIN_CERTIFICATE, *LPWIN_CERTIFICATE;























BOOL
__stdcall
WinSubmitCertificate(
    LPWIN_CERTIFICATE lpCertificate
    );









LONG
__stdcall
WinVerifyTrust(
    HWND    hwnd,
    GUID *  ActionID,
    LPVOID  ActionData
    );


BOOL
__stdcall
WinLoadTrustProvider(
    GUID * ActionID
    );












typedef LPVOID WIN_TRUST_SUBJECT;





typedef struct _WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT {

    HANDLE            hClientToken;
    GUID *            SubjectType;
    WIN_TRUST_SUBJECT Subject;

} WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT, *LPWIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT ;


typedef struct _WIN_TRUST_ACTDATA_SUBJECT_ONLY {

    GUID *            SubjectType;
    WIN_TRUST_SUBJECT Subject;

} WIN_TRUST_ACTDATA_SUBJECT_ONLY, *LPWIN_TRUST_ACTDATA_SUBJECT_ONLY;



















































typedef struct _WIN_TRUST_SUBJECT_FILE {

    HANDLE  hFile;
    LPCWSTR lpPath;

} WIN_TRUST_SUBJECT_FILE, *LPWIN_TRUST_SUBJECT_FILE;












































typedef struct _WIN_TRUST_SUBJECT_FILE_AND_DISPLAY {

    HANDLE  hFile;              
    LPCWSTR lpPath;             
    LPCWSTR lpDisplayName;      
                                

} WIN_TRUST_SUBJECT_FILE_AND_DISPLAY, *LPWIN_TRUST_SUBJECT_FILE_AND_DISPLAY;

























































































typedef struct _WIN_SPUB_TRUSTED_PUBLISHER_DATA {

    HANDLE            hClientToken;
    LPWIN_CERTIFICATE lpCertificate;

} WIN_SPUB_TRUSTED_PUBLISHER_DATA, *LPWIN_SPUB_TRUSTED_PUBLISHER_DATA;






























































































































































































#line 8611 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"



}
#line 8616 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"


#line 8619 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winbase.h"

#line 165 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"























#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"









#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


extern "C" {
#line 39 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
















































#line 88 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

































#line 122 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"






















#line 145 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
















#line 162 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


#line 165 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"





















































































typedef struct _DRAWPATRECT {
        POINT ptPosition;
        POINT ptSize;
        WORD wStyle;
        WORD wPattern;
} DRAWPATRECT, *PDRAWPATRECT;
#line 257 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 259 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"































































































typedef struct _PSINJECTDATA {

    DWORD   DataBytes;          
    DWORD   InjectionPoint;     
    DWORD   Flags;              
    DWORD   Reserved;           

    

} PSINJECTDATA, *PPSINJECTDATA;






































































































typedef struct  tagXFORM
  {
    FLOAT   eM11;
    FLOAT   eM12;
    FLOAT   eM21;
    FLOAT   eM22;
    FLOAT   eDx;
    FLOAT   eDy;
  } XFORM, *PXFORM,  *LPXFORM;


typedef struct tagBITMAP
  {
    LONG        bmType;
    LONG        bmWidth;
    LONG        bmHeight;
    LONG        bmWidthBytes;
    WORD        bmPlanes;
    WORD        bmBitsPixel;
    LPVOID      bmBits;
  } BITMAP, *PBITMAP,  *NPBITMAP,  *LPBITMAP;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 489 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
typedef struct tagRGBTRIPLE {
        BYTE    rgbtBlue;
        BYTE    rgbtGreen;
        BYTE    rgbtRed;
} RGBTRIPLE;
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 495 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagRGBQUAD {
        BYTE    rgbBlue;
        BYTE    rgbGreen;
        BYTE    rgbRed;
        BYTE    rgbReserved;
} RGBQUAD;
typedef RGBQUAD * LPRGBQUAD;


















typedef LONG   LCSCSTYPE;




typedef LONG    LCSGAMUTMATCH;


























typedef long            FXPT16DOT16,  *LPFXPT16DOT16;
typedef long            FXPT2DOT30,  *LPFXPT2DOT30;




typedef struct tagCIEXYZ
{
        FXPT2DOT30 ciexyzX;
        FXPT2DOT30 ciexyzY;
        FXPT2DOT30 ciexyzZ;
} CIEXYZ;
typedef CIEXYZ   *LPCIEXYZ;

typedef struct tagICEXYZTRIPLE
{
        CIEXYZ  ciexyzRed;
        CIEXYZ  ciexyzGreen;
        CIEXYZ  ciexyzBlue;
} CIEXYZTRIPLE;
typedef CIEXYZTRIPLE     *LPCIEXYZTRIPLE;






typedef struct tagLOGCOLORSPACEA {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    CHAR   lcsFilename[260];
} LOGCOLORSPACEA, *LPLOGCOLORSPACEA;
typedef struct tagLOGCOLORSPACEW {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    WCHAR  lcsFilename[260];
} LOGCOLORSPACEW, *LPLOGCOLORSPACEW;

typedef LOGCOLORSPACEW LOGCOLORSPACE;
typedef LPLOGCOLORSPACEW LPLOGCOLORSPACE;



#line 611 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 613 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagBITMAPCOREHEADER {
        DWORD   bcSize;                 
        WORD    bcWidth;
        WORD    bcHeight;
        WORD    bcPlanes;
        WORD    bcBitCount;
} BITMAPCOREHEADER,  *LPBITMAPCOREHEADER, *PBITMAPCOREHEADER;

typedef struct tagBITMAPINFOHEADER{
        DWORD      biSize;
        LONG       biWidth;
        LONG       biHeight;
        WORD       biPlanes;
        WORD       biBitCount;
        DWORD      biCompression;
        DWORD      biSizeImage;
        LONG       biXPelsPerMeter;
        LONG       biYPelsPerMeter;
        DWORD      biClrUsed;
        DWORD      biClrImportant;
} BITMAPINFOHEADER,  *LPBITMAPINFOHEADER, *PBITMAPINFOHEADER;


typedef struct {
        DWORD        bV4Size;
        LONG         bV4Width;
        LONG         bV4Height;
        WORD         bV4Planes;
        WORD         bV4BitCount;
        DWORD        bV4V4Compression;
        DWORD        bV4SizeImage;
        LONG         bV4XPelsPerMeter;
        LONG         bV4YPelsPerMeter;
        DWORD        bV4ClrUsed;
        DWORD        bV4ClrImportant;
        DWORD        bV4RedMask;
        DWORD        bV4GreenMask;
        DWORD        bV4BlueMask;
        DWORD        bV4AlphaMask;
        DWORD        bV4CSType;
        CIEXYZTRIPLE bV4Endpoints;
        DWORD        bV4GammaRed;
        DWORD        bV4GammaGreen;
        DWORD        bV4GammaBlue;
} BITMAPV4HEADER,  *LPBITMAPV4HEADER, *PBITMAPV4HEADER;
#line 661 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
































#line 694 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"







#line 702 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagBITMAPINFO {
    BITMAPINFOHEADER    bmiHeader;
    RGBQUAD             bmiColors[1];
} BITMAPINFO,  *LPBITMAPINFO, *PBITMAPINFO;

typedef struct tagBITMAPCOREINFO {
    BITMAPCOREHEADER    bmciHeader;
    RGBTRIPLE           bmciColors[1];
} BITMAPCOREINFO,  *LPBITMAPCOREINFO, *PBITMAPCOREINFO;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 714 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
typedef struct tagBITMAPFILEHEADER {
        WORD    bfType;
        DWORD   bfSize;
        WORD    bfReserved1;
        WORD    bfReserved2;
        DWORD   bfOffBits;
} BITMAPFILEHEADER,  *LPBITMAPFILEHEADER, *PBITMAPFILEHEADER;
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 722 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"





typedef struct tagFONTSIGNATURE
{
    DWORD fsUsb[4];
    DWORD fsCsb[2];
} FONTSIGNATURE, *PFONTSIGNATURE, *LPFONTSIGNATURE;

typedef struct tagCHARSETINFO
{
    UINT ciCharset;
    UINT ciACP;
    FONTSIGNATURE fs;
} CHARSETINFO, *PCHARSETINFO,  *NPCHARSETINFO,  *LPCHARSETINFO;





typedef struct tagLOCALESIGNATURE
{
    DWORD lsUsb[4];
    DWORD lsCsbDefault[2];
    DWORD lsCsbSupported[2];
} LOCALESIGNATURE, *PLOCALESIGNATURE, *LPLOCALESIGNATURE;


#line 753 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 754 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




typedef struct tagHANDLETABLE
  {
    HGDIOBJ     objectHandle[1];
  } HANDLETABLE, *PHANDLETABLE,  *LPHANDLETABLE;

typedef struct tagMETARECORD
  {
    DWORD       rdSize;
    WORD        rdFunction;
    WORD        rdParm[1];
  } METARECORD;
typedef struct tagMETARECORD  *PMETARECORD;
typedef struct tagMETARECORD   *LPMETARECORD;

typedef struct tagMETAFILEPICT
  {
    LONG        mm;
    LONG        xExt;
    LONG        yExt;
    HMETAFILE   hMF;
  } METAFILEPICT,  *LPMETAFILEPICT;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 781 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
typedef struct tagMETAHEADER
{
    WORD        mtType;
    WORD        mtHeaderSize;
    WORD        mtVersion;
    DWORD       mtSize;
    WORD        mtNoObjects;
    DWORD       mtMaxRecord;
    WORD        mtNoParameters;
} METAHEADER;
typedef struct tagMETAHEADER  *PMETAHEADER;
typedef struct tagMETAHEADER   *LPMETAHEADER;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 795 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagENHMETARECORD
{
    DWORD   iType;              
    DWORD   nSize;              
    DWORD   dParm[1];           
} ENHMETARECORD, *PENHMETARECORD, *LPENHMETARECORD;

typedef struct tagENHMETAHEADER
{
    DWORD   iType;              
    DWORD   nSize;              
                                
    RECTL   rclBounds;          
    RECTL   rclFrame;           
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   nBytes;             
    DWORD   nRecords;           
    WORD    nHandles;           
                                
    WORD    sReserved;          
    DWORD   nDescription;       
                                
    DWORD   offDescription;     
                                
    DWORD   nPalEntries;        
    SIZEL   szlDevice;          
    SIZEL   szlMillimeters;     

    DWORD   cbPixelFormat;      
                                
    DWORD   offPixelFormat;     
                                
    DWORD   bOpenGL;            
                                
#line 833 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} ENHMETAHEADER, *PENHMETAHEADER, *LPENHMETAHEADER;

#line 836 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"













    typedef WCHAR BCHAR;


#line 853 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICA, *PTEXTMETRICA,  *NPTEXTMETRICA,  *LPTEXTMETRICA;
typedef struct tagTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICW, *PTEXTMETRICW,  *NPTEXTMETRICW,  *LPTEXTMETRICW;

typedef TEXTMETRICW TEXTMETRIC;
typedef PTEXTMETRICW PTEXTMETRIC;
typedef NPTEXTMETRICW NPTEXTMETRIC;
typedef LPTEXTMETRICW LPTEXTMETRIC;





#line 911 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"













#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 925 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
typedef struct tagNEWTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICA, *PNEWTEXTMETRICA,  *NPNEWTEXTMETRICA,  *LPNEWTEXTMETRICA;
typedef struct tagNEWTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICW, *PNEWTEXTMETRICW,  *NPNEWTEXTMETRICW,  *LPNEWTEXTMETRICW;

typedef NEWTEXTMETRICW NEWTEXTMETRIC;
typedef PNEWTEXTMETRICW PNEWTEXTMETRIC;
typedef NPNEWTEXTMETRICW NPNEWTEXTMETRIC;
typedef LPNEWTEXTMETRICW LPNEWTEXTMETRIC;





#line 990 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 991 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagNEWTEXTMETRICEXA
{
    NEWTEXTMETRICA  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXA;
typedef struct tagNEWTEXTMETRICEXW
{
    NEWTEXTMETRICW  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXW;

typedef NEWTEXTMETRICEXW NEWTEXTMETRICEX;


#line 1008 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 1009 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 1011 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



typedef struct tagPELARRAY
  {
    LONG        paXCount;
    LONG        paYCount;
    LONG        paXExt;
    LONG        paYExt;
    BYTE        paRGBs;
  } PELARRAY, *PPELARRAY,  *NPPELARRAY,  *LPPELARRAY;


typedef struct tagLOGBRUSH
  {
    UINT        lbStyle;
    COLORREF    lbColor;
    LONG        lbHatch;
  } LOGBRUSH, *PLOGBRUSH,  *NPLOGBRUSH,  *LPLOGBRUSH;

typedef LOGBRUSH            PATTERN;
typedef PATTERN             *PPATTERN;
typedef PATTERN         *NPPATTERN;
typedef PATTERN          *LPPATTERN;


typedef struct tagLOGPEN
  {
    UINT        lopnStyle;
    POINT       lopnWidth;
    COLORREF    lopnColor;
  } LOGPEN, *PLOGPEN,  *NPLOGPEN,  *LPLOGPEN;

typedef struct tagEXTLOGPEN {
    DWORD       elpPenStyle;
    DWORD       elpWidth;
    UINT        elpBrushStyle;
    COLORREF    elpColor;
    LONG        elpHatch;
    DWORD       elpNumEntries;
    DWORD       elpStyleEntry[1];
} EXTLOGPEN, *PEXTLOGPEN,  *NPEXTLOGPEN,  *LPEXTLOGPEN;

typedef struct tagPALETTEENTRY {
    BYTE        peRed;
    BYTE        peGreen;
    BYTE        peBlue;
    BYTE        peFlags;
} PALETTEENTRY, *PPALETTEENTRY,  *LPPALETTEENTRY;


typedef struct tagLOGPALETTE {
    WORD        palVersion;
    WORD        palNumEntries;
    PALETTEENTRY        palPalEntry[1];
} LOGPALETTE, *PLOGPALETTE,  *NPLOGPALETTE,  *LPLOGPALETTE;





typedef struct tagLOGFONTA
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    CHAR      lfFaceName[32];
} LOGFONTA, *PLOGFONTA,  *NPLOGFONTA,  *LPLOGFONTA;
typedef struct tagLOGFONTW
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    WCHAR     lfFaceName[32];
} LOGFONTW, *PLOGFONTW,  *NPLOGFONTW,  *LPLOGFONTW;

typedef LOGFONTW LOGFONT;
typedef PLOGFONTW PLOGFONT;
typedef NPLOGFONTW NPLOGFONT;
typedef LPLOGFONTW LPLOGFONT;





#line 1117 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




typedef struct tagENUMLOGFONTA
{
    LOGFONTA elfLogFont;
    BYTE     elfFullName[64];
    BYTE     elfStyle[32];
} ENUMLOGFONTA, * LPENUMLOGFONTA;

typedef struct tagENUMLOGFONTW
{
    LOGFONTW elfLogFont;
    WCHAR    elfFullName[64];
    WCHAR    elfStyle[32];
} ENUMLOGFONTW, * LPENUMLOGFONTW;

typedef ENUMLOGFONTW ENUMLOGFONT;
typedef LPENUMLOGFONTW LPENUMLOGFONT;



#line 1141 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagENUMLOGFONTEXA
{
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    BYTE        elfScript[32];
} ENUMLOGFONTEXA,  *LPENUMLOGFONTEXA;
typedef struct tagENUMLOGFONTEXW
{
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    WCHAR       elfScript[32];
} ENUMLOGFONTEXW,  *LPENUMLOGFONTEXW;

typedef ENUMLOGFONTEXW ENUMLOGFONTEX;
typedef LPENUMLOGFONTEXW LPENUMLOGFONTEX;



#line 1164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 1165 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


























#line 1192 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"






#line 1199 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"








































#line 1240 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




                                    

                                    

                                    



































typedef struct tagPANOSE
{
    BYTE    bFamilyType;
    BYTE    bSerifStyle;
    BYTE    bWeight;
    BYTE    bProportion;
    BYTE    bContrast;
    BYTE    bStrokeVariation;
    BYTE    bArmStyle;
    BYTE    bLetterform;
    BYTE    bMidline;
    BYTE    bXHeight;
} PANOSE, * LPPANOSE;

















































































































typedef struct tagEXTLOGFONTA {
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTA, *PEXTLOGFONTA,  *NPEXTLOGFONTA,  *LPEXTLOGFONTA;
typedef struct tagEXTLOGFONTW {
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTW, *PEXTLOGFONTW,  *NPEXTLOGFONTW,  *LPEXTLOGFONTW;

typedef EXTLOGFONTW EXTLOGFONT;
typedef PEXTLOGFONTW PEXTLOGFONT;
typedef NPEXTLOGFONTW NPEXTLOGFONT;
typedef LPEXTLOGFONTW LPEXTLOGFONT;





#line 1445 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
















































































#line 1526 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




#line 1531 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 1535 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 1539 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
















































































#line 1620 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"





















                             

                             

                             











































































#line 1722 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"































#line 1754 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



























typedef struct _devicemodeA {
    BYTE   dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
      };
      POINTL dmPosition;
    };
    short dmScale;
    short dmCopies;
    short dmDefaultSource;
    short dmPrintQuality;
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    BYTE   dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    DWORD  dmDisplayFlags;
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;



#line 1824 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 1825 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} DEVMODEA, *PDEVMODEA, *NPDEVMODEA, *LPDEVMODEA;
typedef struct _devicemodeW {
    WCHAR  dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
      };
      POINTL dmPosition;
    };
    short dmScale;
    short dmCopies;
    short dmDefaultSource;
    short dmPrintQuality;
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    WCHAR  dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    DWORD  dmDisplayFlags;
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;



#line 1869 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 1870 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} DEVMODEW, *PDEVMODEW, *NPDEVMODEW, *LPDEVMODEW;

typedef DEVMODEW DEVMODE;
typedef PDEVMODEW PDEVMODE;
typedef NPDEVMODEW NPDEVMODE;
typedef LPDEVMODEW LPDEVMODE;





#line 1882 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




#line 1887 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 1891 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"









#line 1901 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"






















#line 1924 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"












































































#line 2001 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




















































#line 2054 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 2058 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 2062 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"












































#line 2107 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

















































#line 2157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct _DISPLAY_DEVICEA {
    DWORD  cb;
    BYTE   DeviceName[32];
    BYTE   DeviceString[128];
    DWORD  StateFlags;
} DISPLAY_DEVICEA, *PDISPLAY_DEVICEA, *LPDISPLAY_DEVICEA;
typedef struct _DISPLAY_DEVICEW {
    DWORD  cb;
    WCHAR  DeviceName[32];
    WCHAR  DeviceString[128];
    DWORD  StateFlags;
} DISPLAY_DEVICEW, *PDISPLAY_DEVICEW, *LPDISPLAY_DEVICEW;

typedef DISPLAY_DEVICEW DISPLAY_DEVICE;
typedef PDISPLAY_DEVICEW PDISPLAY_DEVICE;
typedef LPDISPLAY_DEVICEW LPDISPLAY_DEVICE;




#line 2179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"











typedef struct _RGNDATAHEADER {
    DWORD   dwSize;
    DWORD   iType;
    DWORD   nCount;
    DWORD   nRgnSize;
    RECT    rcBound;
} RGNDATAHEADER, *PRGNDATAHEADER;

typedef struct _RGNDATA {
    RGNDATAHEADER   rdh;
    char            Buffer[1];
} RGNDATA, *PRGNDATA,  *NPRGNDATA,  *LPRGNDATA;


typedef struct _ABC {
    int     abcA;
    UINT    abcB;
    int     abcC;
} ABC, *PABC,  *NPABC,  *LPABC;

typedef struct _ABCFLOAT {
    FLOAT   abcfA;
    FLOAT   abcfB;
    FLOAT   abcfC;
} ABCFLOAT, *PABCFLOAT,  *NPABCFLOAT,  *LPABCFLOAT;






typedef struct _OUTLINETEXTMETRICA {
    UINT    otmSize;
    TEXTMETRICA otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICA, *POUTLINETEXTMETRICA,  *NPOUTLINETEXTMETRICA,  *LPOUTLINETEXTMETRICA;
typedef struct _OUTLINETEXTMETRICW {
    UINT    otmSize;
    TEXTMETRICW otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICW, *POUTLINETEXTMETRICW,  *NPOUTLINETEXTMETRICW,  *LPOUTLINETEXTMETRICW;

typedef OUTLINETEXTMETRICW OUTLINETEXTMETRIC;
typedef POUTLINETEXTMETRICW POUTLINETEXTMETRIC;
typedef NPOUTLINETEXTMETRICW NPOUTLINETEXTMETRIC;
typedef LPOUTLINETEXTMETRICW LPOUTLINETEXTMETRIC;





#line 2300 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"





#line 2306 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagPOLYTEXTA
{
    int       x;
    int       y;
    UINT      n;
    LPCSTR    lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTA, *PPOLYTEXTA,  *NPPOLYTEXTA,  *LPPOLYTEXTA;
typedef struct tagPOLYTEXTW
{
    int       x;
    int       y;
    UINT      n;
    LPCWSTR   lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTW, *PPOLYTEXTW,  *NPPOLYTEXTW,  *LPPOLYTEXTW;

typedef POLYTEXTW POLYTEXT;
typedef PPOLYTEXTW PPOLYTEXT;
typedef NPPOLYTEXTW NPPOLYTEXT;
typedef LPPOLYTEXTW LPPOLYTEXT;





#line 2339 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct _FIXED {

    WORD    fract;
    short   value;



#line 2348 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} FIXED;


typedef struct _MAT2 {
     FIXED  eM11;
     FIXED  eM12;
     FIXED  eM21;
     FIXED  eM22;
} MAT2,  *LPMAT2;



typedef struct _GLYPHMETRICS {
    UINT    gmBlackBoxX;
    UINT    gmBlackBoxY;
    POINT   gmptGlyphOrigin;
    short   gmCellIncX;
    short   gmCellIncY;
} GLYPHMETRICS,  *LPGLYPHMETRICS;













#line 2381 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"







typedef struct tagPOINTFX
{
    FIXED x;
    FIXED y;
} POINTFX, * LPPOINTFX;

typedef struct tagTTPOLYCURVE
{
    WORD    wType;
    WORD    cpfx;
    POINTFX apfx[1];
} TTPOLYCURVE, * LPTTPOLYCURVE;

typedef struct tagTTPOLYGONHEADER
{
    DWORD   cb;
    DWORD   dwType;
    POINTFX pfxStart;
} TTPOLYGONHEADER, * LPTTPOLYGONHEADER;













































typedef struct tagGCP_RESULTSA
    {
    DWORD   lStructSize;
    LPSTR     lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSA, * LPGCP_RESULTSA;
typedef struct tagGCP_RESULTSW
    {
    DWORD   lStructSize;
    LPWSTR    lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSW, * LPGCP_RESULTSW;

typedef GCP_RESULTSW GCP_RESULTS;
typedef LPGCP_RESULTSW LPGCP_RESULTS;



#line 2483 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 2484 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct _RASTERIZER_STATUS {
    short   nSize;
    short   wFlags;
    short   nLanguageID;
} RASTERIZER_STATUS,  *LPRASTERIZER_STATUS;






typedef struct tagPIXELFORMATDESCRIPTOR
{
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerType;
    BYTE  bReserved;
    DWORD dwLayerMask;
    DWORD dwVisibleMask;
    DWORD dwDamageMask;
} PIXELFORMATDESCRIPTOR, *PPIXELFORMATDESCRIPTOR,  *LPPIXELFORMATDESCRIPTOR;

































typedef int (__stdcall* OLDFONTENUMPROCA)(const LOGFONTA *, const TEXTMETRICA *, DWORD, LPARAM);
typedef int (__stdcall* OLDFONTENUMPROCW)(const LOGFONTW *, const TEXTMETRICW *, DWORD, LPARAM);




#line 2565 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"








#line 2574 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef OLDFONTENUMPROCA    FONTENUMPROCA;
typedef OLDFONTENUMPROCW    FONTENUMPROCW;

typedef FONTENUMPROCW FONTENUMPROC;


#line 2582 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef int (__stdcall* GOBJENUMPROC)(LPVOID, LPARAM);
typedef void (__stdcall* LINEDDAPROC)(int, int, LPARAM);











#line 2597 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall AddFontResourceA(LPCSTR);
__declspec(dllimport) int __stdcall AddFontResourceW(LPCWSTR);




#line 2605 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


__declspec(dllimport) BOOL  __stdcall AnimatePalette(HPALETTE, UINT, UINT, const PALETTEENTRY *);
__declspec(dllimport) BOOL  __stdcall Arc(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) BOOL  __stdcall BitBlt(HDC, int, int, int, int, HDC, int, int, DWORD);
__declspec(dllimport) BOOL  __stdcall CancelDC(HDC);
__declspec(dllimport) BOOL  __stdcall Chord(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) int   __stdcall ChoosePixelFormat(HDC, const PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) HMETAFILE  __stdcall CloseMetaFile(HDC);
__declspec(dllimport) int     __stdcall CombineRgn(HRGN, HRGN, HRGN, int);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileA(HMETAFILE, LPCSTR);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileW(HMETAFILE, LPCWSTR);




#line 2622 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HBITMAP __stdcall CreateBitmap(int, int, UINT, UINT, const void *);
__declspec(dllimport) HBITMAP __stdcall CreateBitmapIndirect(const BITMAP *);
__declspec(dllimport) HBRUSH  __stdcall CreateBrushIndirect(const LOGBRUSH *);
__declspec(dllimport) HBITMAP __stdcall CreateCompatibleBitmap(HDC, int, int);
__declspec(dllimport) HBITMAP __stdcall CreateDiscardableBitmap(HDC, int, int);
__declspec(dllimport) HDC     __stdcall CreateCompatibleDC(HDC);
__declspec(dllimport) HDC     __stdcall CreateDCA(LPCSTR, LPCSTR , LPCSTR , const DEVMODEA *);
__declspec(dllimport) HDC     __stdcall CreateDCW(LPCWSTR, LPCWSTR , LPCWSTR , const DEVMODEW *);




#line 2635 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HBITMAP __stdcall CreateDIBitmap(HDC, const BITMAPINFOHEADER *, DWORD, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrush(HGLOBAL, UINT);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrushPt(const void *, UINT);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgn(int, int, int, int);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgnIndirect(const RECT *);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectA(const LOGFONTA *);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectW(const LOGFONTW *);




#line 2647 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HFONT   __stdcall CreateFontA(int, int, int, int, int, DWORD,
                             DWORD, DWORD, DWORD, DWORD, DWORD,
                             DWORD, DWORD, LPCSTR);
__declspec(dllimport) HFONT   __stdcall CreateFontW(int, int, int, int, int, DWORD,
                             DWORD, DWORD, DWORD, DWORD, DWORD,
                             DWORD, DWORD, LPCWSTR);




#line 2658 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) HBRUSH  __stdcall CreateHatchBrush(int, COLORREF);
__declspec(dllimport) HDC     __stdcall CreateICA(LPCSTR, LPCSTR , LPCSTR , const DEVMODEA *);
__declspec(dllimport) HDC     __stdcall CreateICW(LPCWSTR, LPCWSTR , LPCWSTR , const DEVMODEW *);




#line 2667 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HDC     __stdcall CreateMetaFileA(LPCSTR);
__declspec(dllimport) HDC     __stdcall CreateMetaFileW(LPCWSTR);




#line 2674 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HPALETTE __stdcall CreatePalette(const LOGPALETTE *);
__declspec(dllimport) HPEN    __stdcall CreatePen(int, int, COLORREF);
__declspec(dllimport) HPEN    __stdcall CreatePenIndirect(const LOGPEN *);
__declspec(dllimport) HRGN    __stdcall CreatePolyPolygonRgn(const POINT *, const INT *, int, int);
__declspec(dllimport) HBRUSH  __stdcall CreatePatternBrush(HBITMAP);
__declspec(dllimport) HRGN    __stdcall CreateRectRgn(int, int, int, int);
__declspec(dllimport) HRGN    __stdcall CreateRectRgnIndirect(const RECT *);
__declspec(dllimport) HRGN    __stdcall CreateRoundRectRgn(int, int, int, int, int, int);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceA(DWORD, LPCSTR, LPCSTR, LPCSTR);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceW(DWORD, LPCWSTR, LPCWSTR, LPCWSTR);




#line 2689 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HBRUSH  __stdcall CreateSolidBrush(COLORREF);

__declspec(dllimport) BOOL __stdcall DeleteDC(HDC);
__declspec(dllimport) BOOL __stdcall DeleteMetaFile(HMETAFILE);
__declspec(dllimport) BOOL __stdcall DeleteObject(HGDIOBJ);
__declspec(dllimport) int  __stdcall DescribePixelFormat(HDC, int, UINT, LPPIXELFORMATDESCRIPTOR);





typedef UINT   (__stdcall* LPFNDEVMODE)(HWND, HMODULE, LPDEVMODE, LPSTR, LPSTR, LPDEVMODE, LPSTR, UINT);

typedef DWORD  (__stdcall* LPFNDEVCAPS)(LPSTR, LPSTR, UINT, LPSTR, LPDEVMODE);






































#line 2742 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"














#line 2757 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

















#line 2775 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall DeviceCapabilitiesA(LPCSTR, LPCSTR, WORD,
                                LPSTR, const DEVMODEA *);
__declspec(dllimport) int  __stdcall DeviceCapabilitiesW(LPCWSTR, LPCWSTR, WORD,
                                LPWSTR, const DEVMODEW *);




#line 2785 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall DrawEscape(HDC, int, int, LPCSTR);
__declspec(dllimport) BOOL __stdcall Ellipse(HDC, int, int, int, int);


__declspec(dllimport) int  __stdcall EnumFontFamiliesExA(HDC, LPLOGFONTA,FONTENUMPROCA, LPARAM,DWORD);
__declspec(dllimport) int  __stdcall EnumFontFamiliesExW(HDC, LPLOGFONTW,FONTENUMPROCW, LPARAM,DWORD);




#line 2797 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 2798 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int  __stdcall EnumFontFamiliesA(HDC, LPCSTR, FONTENUMPROCA, LPARAM);
__declspec(dllimport) int  __stdcall EnumFontFamiliesW(HDC, LPCWSTR, FONTENUMPROCW, LPARAM);




#line 2806 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) int  __stdcall EnumFontsA(HDC, LPCSTR,  FONTENUMPROCA, LPARAM);
__declspec(dllimport) int  __stdcall EnumFontsW(HDC, LPCWSTR,  FONTENUMPROCW, LPARAM);




#line 2813 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


__declspec(dllimport) int  __stdcall EnumObjects(HDC, int, GOBJENUMPROC, LPARAM);


#line 2819 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


__declspec(dllimport) BOOL __stdcall EqualRgn(HRGN, HRGN);
__declspec(dllimport) int  __stdcall Escape(HDC, int, int, LPCSTR, LPVOID);
__declspec(dllimport) int  __stdcall ExtEscape(HDC, int, int, LPCSTR, int, LPSTR);
__declspec(dllimport) int  __stdcall ExcludeClipRect(HDC, int, int, int, int);
__declspec(dllimport) HRGN __stdcall ExtCreateRegion(const XFORM *, DWORD, const RGNDATA *);
__declspec(dllimport) BOOL  __stdcall ExtFloodFill(HDC, int, int, COLORREF, UINT);
__declspec(dllimport) BOOL   __stdcall FillRgn(HDC, HRGN, HBRUSH);
__declspec(dllimport) BOOL   __stdcall FloodFill(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL   __stdcall FrameRgn(HDC, HRGN, HBRUSH, int, int);
__declspec(dllimport) int   __stdcall GetROP2(HDC);
__declspec(dllimport) BOOL  __stdcall GetAspectRatioFilterEx(HDC, LPSIZE);
__declspec(dllimport) COLORREF __stdcall GetBkColor(HDC);




#line 2838 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int   __stdcall GetBkMode(HDC);
__declspec(dllimport) LONG  __stdcall GetBitmapBits(HBITMAP, LONG, LPVOID);
__declspec(dllimport) BOOL  __stdcall GetBitmapDimensionEx(HBITMAP, LPSIZE);
__declspec(dllimport) UINT  __stdcall GetBoundsRect(HDC, LPRECT, UINT);

__declspec(dllimport) BOOL  __stdcall GetBrushOrgEx(HDC, LPPOINT);

__declspec(dllimport) BOOL  __stdcall GetCharWidthA(HDC, UINT, UINT, LPINT);
__declspec(dllimport) BOOL  __stdcall GetCharWidthW(HDC, UINT, UINT, LPINT);




#line 2853 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharWidth32A(HDC, UINT, UINT, LPINT);
__declspec(dllimport) BOOL  __stdcall GetCharWidth32W(HDC, UINT, UINT, LPINT);




#line 2860 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatA(HDC, UINT, UINT, PFLOAT);
__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatW(HDC, UINT, UINT, PFLOAT);




#line 2867 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsA(HDC, UINT, UINT, LPABC);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsW(HDC, UINT, UINT, LPABC);




#line 2874 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatA(HDC, UINT, UINT, LPABCFLOAT);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatW(HDC, UINT, UINT, LPABCFLOAT);




#line 2881 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) int   __stdcall GetClipBox(HDC, LPRECT);
__declspec(dllimport) int   __stdcall GetClipRgn(HDC, HRGN);
__declspec(dllimport) int   __stdcall GetMetaRgn(HDC, HRGN);
__declspec(dllimport) HGDIOBJ __stdcall GetCurrentObject(HDC, UINT);
__declspec(dllimport) BOOL  __stdcall GetCurrentPositionEx(HDC, LPPOINT);
__declspec(dllimport) int   __stdcall GetDeviceCaps(HDC, int);
__declspec(dllimport) int   __stdcall GetDIBits(HDC, HBITMAP, UINT, UINT, LPVOID, LPBITMAPINFO, UINT);
__declspec(dllimport) DWORD __stdcall GetFontData(HDC, DWORD, DWORD, LPVOID, DWORD);
__declspec(dllimport) DWORD __stdcall GetGlyphOutlineA(HDC, UINT, UINT, LPGLYPHMETRICS, DWORD, LPVOID, const MAT2 *);
__declspec(dllimport) DWORD __stdcall GetGlyphOutlineW(HDC, UINT, UINT, LPGLYPHMETRICS, DWORD, LPVOID, const MAT2 *);




#line 2896 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) int   __stdcall GetGraphicsMode(HDC);
__declspec(dllimport) int   __stdcall GetMapMode(HDC);
__declspec(dllimport) UINT  __stdcall GetMetaFileBitsEx(HMETAFILE, UINT, LPVOID);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileA(LPCSTR);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileW(LPCWSTR);




#line 2906 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) COLORREF __stdcall GetNearestColor(HDC, COLORREF);
__declspec(dllimport) UINT  __stdcall GetNearestPaletteIndex(HPALETTE, COLORREF);
__declspec(dllimport) DWORD __stdcall GetObjectType(HGDIOBJ h);



__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsA(HDC, UINT, LPOUTLINETEXTMETRICA);
__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsW(HDC, UINT, LPOUTLINETEXTMETRICW);




#line 2919 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 2921 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) UINT  __stdcall GetPaletteEntries(HPALETTE, UINT, UINT, LPPALETTEENTRY);
__declspec(dllimport) COLORREF __stdcall GetPixel(HDC, int, int);
__declspec(dllimport) int   __stdcall GetPixelFormat(HDC);
__declspec(dllimport) int   __stdcall GetPolyFillMode(HDC);
__declspec(dllimport) BOOL  __stdcall GetRasterizerCaps(LPRASTERIZER_STATUS, UINT);
__declspec(dllimport) DWORD __stdcall GetRegionData(HRGN, DWORD, LPRGNDATA);
__declspec(dllimport) int   __stdcall GetRgnBox(HRGN, LPRECT);
__declspec(dllimport) HGDIOBJ __stdcall GetStockObject(int);
__declspec(dllimport) int   __stdcall GetStretchBltMode(HDC);
__declspec(dllimport) UINT  __stdcall GetSystemPaletteEntries(HDC, UINT, UINT, LPPALETTEENTRY);
__declspec(dllimport) UINT  __stdcall GetSystemPaletteUse(HDC);
__declspec(dllimport) int   __stdcall GetTextCharacterExtra(HDC);
__declspec(dllimport) UINT  __stdcall GetTextAlign(HDC);
__declspec(dllimport) COLORREF __stdcall GetTextColor(HDC);

__declspec(dllimport) BOOL  __stdcall GetTextExtentPointA(
                    HDC,
                    LPCSTR,
                    int,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentPointW(
                    HDC,
                    LPCWSTR,
                    int,
                    LPSIZE
                    );




#line 2954 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetTextExtentPoint32A(
                    HDC,
                    LPCSTR,
                    int,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentPoint32W(
                    HDC,
                    LPCWSTR,
                    int,
                    LPSIZE
                    );




#line 2972 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetTextExtentExPointA(
                    HDC,
                    LPCSTR,
                    int,
                    int,
                    LPINT,
                    LPINT,
                    LPSIZE
                    );
__declspec(dllimport) BOOL  __stdcall GetTextExtentExPointW(
                    HDC,
                    LPCWSTR,
                    int,
                    int,
                    LPINT,
                    LPINT,
                    LPSIZE
                    );




#line 2996 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall GetTextCharset(HDC hdc);
__declspec(dllimport) int __stdcall GetTextCharsetInfo(HDC hdc, LPFONTSIGNATURE lpSig, DWORD dwFlags);
__declspec(dllimport) BOOL __stdcall TranslateCharsetInfo( DWORD  *lpSrc, LPCHARSETINFO lpCs, DWORD dwFlags);
__declspec(dllimport) DWORD __stdcall GetFontLanguageInfo( HDC );
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementA(HDC, LPCSTR, int, int, LPGCP_RESULTSA, DWORD);
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementW(HDC, LPCWSTR, int, int, LPGCP_RESULTSW, DWORD);




#line 3008 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 3009 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


















































































































































































#line 3188 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


__declspec(dllimport) BOOL  __stdcall GetViewportExtEx(HDC, LPSIZE);
__declspec(dllimport) BOOL  __stdcall GetViewportOrgEx(HDC, LPPOINT);
__declspec(dllimport) BOOL  __stdcall GetWindowExtEx(HDC, LPSIZE);
__declspec(dllimport) BOOL  __stdcall GetWindowOrgEx(HDC, LPPOINT);

__declspec(dllimport) int  __stdcall IntersectClipRect(HDC, int, int, int, int);
__declspec(dllimport) BOOL __stdcall InvertRgn(HDC, HRGN);
__declspec(dllimport) BOOL __stdcall LineDDA(int, int, int, int, LINEDDAPROC, LPARAM);
__declspec(dllimport) BOOL __stdcall LineTo(HDC, int, int);
__declspec(dllimport) BOOL __stdcall MaskBlt(HDC, int, int, int, int,
              HDC, int, int, HBITMAP, int, int, DWORD);
__declspec(dllimport) BOOL __stdcall PlgBlt(HDC, const POINT *, HDC, int, int, int,
                     int, HBITMAP, int, int);

__declspec(dllimport) int  __stdcall OffsetClipRgn(HDC, int, int);
__declspec(dllimport) int  __stdcall OffsetRgn(HRGN, int, int);
__declspec(dllimport) BOOL __stdcall PatBlt(HDC, int, int, int, int, DWORD);
__declspec(dllimport) BOOL __stdcall Pie(HDC, int, int, int, int, int, int, int, int);
__declspec(dllimport) BOOL __stdcall PlayMetaFile(HDC, HMETAFILE);
__declspec(dllimport) BOOL __stdcall PaintRgn(HDC, HRGN);
__declspec(dllimport) BOOL __stdcall PolyPolygon(HDC, const POINT *, const INT *, int);
__declspec(dllimport) BOOL __stdcall PtInRegion(HRGN, int, int);
__declspec(dllimport) BOOL __stdcall PtVisible(HDC, int, int);
__declspec(dllimport) BOOL __stdcall RectInRegion(HRGN, const RECT *);
__declspec(dllimport) BOOL __stdcall RectVisible(HDC, const RECT *);
__declspec(dllimport) BOOL __stdcall Rectangle(HDC, int, int, int, int);
__declspec(dllimport) BOOL __stdcall RestoreDC(HDC, int);
__declspec(dllimport) HDC  __stdcall ResetDCA(HDC, const DEVMODEA *);
__declspec(dllimport) HDC  __stdcall ResetDCW(HDC, const DEVMODEW *);




#line 3224 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) UINT __stdcall RealizePalette(HDC);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceA(LPCSTR);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceW(LPCWSTR);




#line 3232 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall RoundRect(HDC, int, int, int, int, int, int);
__declspec(dllimport) BOOL __stdcall ResizePalette(HPALETTE, UINT);

__declspec(dllimport) int  __stdcall SaveDC(HDC);
__declspec(dllimport) int  __stdcall SelectClipRgn(HDC, HRGN);
__declspec(dllimport) int  __stdcall ExtSelectClipRgn(HDC, HRGN, int);
__declspec(dllimport) int  __stdcall SetMetaRgn(HDC);
__declspec(dllimport) HGDIOBJ __stdcall SelectObject(HDC, HGDIOBJ);
__declspec(dllimport) HPALETTE __stdcall SelectPalette(HDC, HPALETTE, BOOL);
__declspec(dllimport) COLORREF __stdcall SetBkColor(HDC, COLORREF);




#line 3247 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int   __stdcall SetBkMode(HDC, int);
__declspec(dllimport) LONG  __stdcall SetBitmapBits(HBITMAP, DWORD, const void *);

__declspec(dllimport) UINT  __stdcall SetBoundsRect(HDC, const RECT *, UINT);
__declspec(dllimport) int   __stdcall SetDIBits(HDC, HBITMAP, UINT, UINT, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) int   __stdcall SetDIBitsToDevice(HDC, int, int, DWORD, DWORD, int,
        int, UINT, UINT, const void *, const BITMAPINFO *, UINT);
__declspec(dllimport) DWORD __stdcall SetMapperFlags(HDC, DWORD);
__declspec(dllimport) int   __stdcall SetGraphicsMode(HDC hdc, int iMode);
__declspec(dllimport) int   __stdcall SetMapMode(HDC, int);
__declspec(dllimport) HMETAFILE   __stdcall SetMetaFileBitsEx(UINT, const BYTE *);
__declspec(dllimport) UINT  __stdcall SetPaletteEntries(HPALETTE, UINT, UINT, const PALETTEENTRY *);
__declspec(dllimport) COLORREF __stdcall SetPixel(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL   __stdcall SetPixelV(HDC, int, int, COLORREF);
__declspec(dllimport) BOOL  __stdcall SetPixelFormat(HDC, int, const PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) int   __stdcall SetPolyFillMode(HDC, int);
__declspec(dllimport) BOOL   __stdcall StretchBlt(HDC, int, int, int, int, HDC, int, int, int, int, DWORD);
__declspec(dllimport) BOOL   __stdcall SetRectRgn(HRGN, int, int, int, int);
__declspec(dllimport) int   __stdcall StretchDIBits(HDC, int, int, int, int, int, int, int, int, const
        void *, const BITMAPINFO *, UINT, DWORD);
__declspec(dllimport) int   __stdcall SetROP2(HDC, int);
__declspec(dllimport) int   __stdcall SetStretchBltMode(HDC, int);
__declspec(dllimport) UINT  __stdcall SetSystemPaletteUse(HDC, UINT);
__declspec(dllimport) int   __stdcall SetTextCharacterExtra(HDC, int);
__declspec(dllimport) COLORREF __stdcall SetTextColor(HDC, COLORREF);
__declspec(dllimport) UINT  __stdcall SetTextAlign(HDC, UINT);
__declspec(dllimport) BOOL  __stdcall SetTextJustification(HDC, int, int);
__declspec(dllimport) BOOL  __stdcall UpdateColors(HDC);








typedef USHORT COLOR16;

typedef struct _TRIVERTEX
{
    LONG    x;
    LONG    y;
    COLOR16 Red;
    COLOR16 Green;
    COLOR16 Blue;
    COLOR16 Alpha;
}TRIVERTEX,*PTRIVERTEX,*LPTRIVERTEX;

typedef struct _GRADIENT_TRIANGLE
{
    ULONG Vertex1;
    ULONG Vertex2;
    ULONG Vertex3;
} GRADIENT_TRIANGLE,*PGRADIENT_TRIANGLE,*LPGRADIENT_TRIANGLE;

typedef struct _GRADIENT_RECT
{
    ULONG UpperLeft;
    ULONG LowerRight;
}GRADIENT_RECT,*PGRADIENT_RECT,*LPGRADIENT_RECT;

typedef struct _BLENDFUNCTION
{
    BYTE   BlendOp;
    BYTE   BlendFlags;
    BYTE   SourceConstantAlpha;
    BYTE   AlphaFormat;
}BLENDFUNCTION,*PBLENDFUNCTION;

















__declspec(dllimport) BOOL  __stdcall AlphaBlend(HDC,int,int,int,int,HDC,int,int,int,int,BLENDFUNCTION);

__declspec(dllimport) BOOL  __stdcall AlphaDIBBlend(HDC,int,int,int,int,const void *,
        const BITMAPINFO *,UINT,int,int,int,int,BLENDFUNCTION);

__declspec(dllimport) BOOL  __stdcall TransparentBlt(HDC,int,int,int,int,HDC,int,int,int,int,UINT);

__declspec(dllimport) BOOL  __stdcall TransparentDIBits(HDC,int,int,int,int,const void *,
        const BITMAPINFO *,UINT,int,int,int,int,UINT);










__declspec(dllimport) BOOL  __stdcall GradientFill(HDC,PTRIVERTEX,ULONG,PVOID,ULONG,ULONG);

#line 3355 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




__declspec(dllimport) BOOL  __stdcall PlayMetaFileRecord(HDC, LPHANDLETABLE, LPMETARECORD, UINT);
typedef int (__stdcall* MFENUMPROC)(HDC, HANDLETABLE *, METARECORD *, int, LPARAM);
__declspec(dllimport) BOOL  __stdcall EnumMetaFile(HDC, HMETAFILE, MFENUMPROC, LPARAM);

typedef int (__stdcall* ENHMFENUMPROC)(HDC, HANDLETABLE *, const ENHMETARECORD *, int, LPARAM);



__declspec(dllimport) HENHMETAFILE __stdcall CloseEnhMetaFile(HDC);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileA(HENHMETAFILE, LPCSTR);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileW(HENHMETAFILE, LPCWSTR);




#line 3375 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileA(HDC, LPCSTR, const RECT *, LPCSTR);
__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileW(HDC, LPCWSTR, const RECT *, LPCWSTR);




#line 3382 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall DeleteEnhMetaFile(HENHMETAFILE);
__declspec(dllimport) BOOL  __stdcall EnumEnhMetaFile(HDC, HENHMETAFILE, ENHMFENUMPROC,
        LPVOID, const RECT *);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileA(LPCSTR);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileW(LPCWSTR);




#line 3392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileBits(HENHMETAFILE, UINT, LPBYTE);
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileDescriptionA(HENHMETAFILE, UINT, LPSTR );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileDescriptionW(HENHMETAFILE, UINT, LPWSTR );




#line 3400 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) UINT  __stdcall GetEnhMetaFileHeader(HENHMETAFILE, UINT, LPENHMETAHEADER );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFilePaletteEntries(HENHMETAFILE, UINT, LPPALETTEENTRY );
__declspec(dllimport) UINT  __stdcall GetEnhMetaFilePixelFormat(HENHMETAFILE, UINT,
                                                 PIXELFORMATDESCRIPTOR *);
__declspec(dllimport) UINT  __stdcall GetWinMetaFileBits(HENHMETAFILE, UINT, LPBYTE, INT, HDC);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFile(HDC, HENHMETAFILE, const RECT *);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFileRecord(HDC, LPHANDLETABLE, const ENHMETARECORD *, UINT);
__declspec(dllimport) HENHMETAFILE  __stdcall SetEnhMetaFileBits(UINT, const BYTE *);
__declspec(dllimport) HENHMETAFILE  __stdcall SetWinMetaFileBits(UINT, const BYTE *, HDC, const METAFILEPICT *);
__declspec(dllimport) BOOL  __stdcall GdiComment(HDC, UINT, const BYTE *);

#line 3412 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



__declspec(dllimport) BOOL __stdcall GetTextMetricsA(HDC, LPTEXTMETRICA);
__declspec(dllimport) BOOL __stdcall GetTextMetricsW(HDC, LPTEXTMETRICW);




#line 3422 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 3424 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



typedef struct tagDIBSECTION {
    BITMAP              dsBm;
    BITMAPINFOHEADER    dsBmih;
    DWORD               dsBitfields[3];
    HANDLE              dshSection;
    DWORD               dsOffset;
} DIBSECTION,  *LPDIBSECTION, *PDIBSECTION;

__declspec(dllimport) BOOL __stdcall AngleArc(HDC, int, int, DWORD, FLOAT, FLOAT);
__declspec(dllimport) BOOL __stdcall PolyPolyline(HDC, const POINT *, const DWORD *, DWORD);
__declspec(dllimport) BOOL __stdcall GetWorldTransform(HDC, LPXFORM);
__declspec(dllimport) BOOL __stdcall SetWorldTransform(HDC, const XFORM *);
__declspec(dllimport) BOOL __stdcall ModifyWorldTransform(HDC, const XFORM *, DWORD);
__declspec(dllimport) BOOL __stdcall CombineTransform(LPXFORM, const XFORM *, const XFORM *);
__declspec(dllimport) HBITMAP __stdcall CreateDIBSection(HDC, const BITMAPINFO *, UINT, void **, HANDLE, DWORD);
__declspec(dllimport) UINT __stdcall GetDIBColorTable(HDC, UINT, UINT, RGBQUAD *);
__declspec(dllimport) UINT __stdcall SetDIBColorTable(HDC, UINT, UINT, const RGBQUAD *);




































typedef struct  tagCOLORADJUSTMENT {
    WORD   caSize;
    WORD   caFlags;
    WORD   caIlluminantIndex;
    WORD   caRedGamma;
    WORD   caGreenGamma;
    WORD   caBlueGamma;
    WORD   caReferenceBlack;
    WORD   caReferenceWhite;
    SHORT  caContrast;
    SHORT  caBrightness;
    SHORT  caColorfulness;
    SHORT  caRedGreenTint;
} COLORADJUSTMENT, *PCOLORADJUSTMENT,  *LPCOLORADJUSTMENT;

__declspec(dllimport) BOOL __stdcall SetColorAdjustment(HDC, const COLORADJUSTMENT *);
__declspec(dllimport) BOOL __stdcall GetColorAdjustment(HDC, LPCOLORADJUSTMENT);
__declspec(dllimport) HPALETTE __stdcall CreateHalftonePalette(HDC);


typedef BOOL (__stdcall* ABORTPROC)(HDC, int);


#line 3504 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct _DOCINFOA {
    int     cbSize;
    LPCSTR   lpszDocName;
    LPCSTR   lpszOutput;

    LPCSTR   lpszDatatype;
    DWORD    fwType;
#line 3513 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} DOCINFOA, *LPDOCINFOA;
typedef struct _DOCINFOW {
    int     cbSize;
    LPCWSTR  lpszDocName;
    LPCWSTR  lpszOutput;

    LPCWSTR  lpszDatatype;
    DWORD    fwType;
#line 3522 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
} DOCINFOW, *LPDOCINFOW;

typedef DOCINFOW DOCINFO;
typedef LPDOCINFOW LPDOCINFO;



#line 3530 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




#line 3535 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int __stdcall StartDocA(HDC, const DOCINFOA *);
__declspec(dllimport) int __stdcall StartDocW(HDC, const DOCINFOW *);




#line 3543 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) int __stdcall EndDoc(HDC);
__declspec(dllimport) int __stdcall StartPage(HDC);
__declspec(dllimport) int __stdcall EndPage(HDC);
__declspec(dllimport) int __stdcall AbortDoc(HDC);
__declspec(dllimport) int __stdcall SetAbortProc(HDC, ABORTPROC);

__declspec(dllimport) BOOL __stdcall AbortPath(HDC);
__declspec(dllimport) BOOL __stdcall ArcTo(HDC, int, int, int, int, int, int,int, int);
__declspec(dllimport) BOOL __stdcall BeginPath(HDC);
__declspec(dllimport) BOOL __stdcall CloseFigure(HDC);
__declspec(dllimport) BOOL __stdcall EndPath(HDC);
__declspec(dllimport) BOOL __stdcall FillPath(HDC);
__declspec(dllimport) BOOL __stdcall FlattenPath(HDC);
__declspec(dllimport) int  __stdcall GetPath(HDC, LPPOINT, LPBYTE, int);
__declspec(dllimport) HRGN __stdcall PathToRegion(HDC);
__declspec(dllimport) BOOL __stdcall PolyDraw(HDC, const POINT *, const BYTE *, int);
__declspec(dllimport) BOOL __stdcall SelectClipPath(HDC, int);
__declspec(dllimport) int  __stdcall SetArcDirection(HDC, int);
__declspec(dllimport) BOOL __stdcall SetMiterLimit(HDC, FLOAT, PFLOAT);
__declspec(dllimport) BOOL __stdcall StrokeAndFillPath(HDC);
__declspec(dllimport) BOOL __stdcall StrokePath(HDC);
__declspec(dllimport) BOOL __stdcall WidenPath(HDC);
__declspec(dllimport) HPEN __stdcall ExtCreatePen(DWORD, DWORD, const LOGBRUSH *, DWORD, const DWORD *);
__declspec(dllimport) BOOL __stdcall GetMiterLimit(HDC, PFLOAT);
__declspec(dllimport) int  __stdcall GetArcDirection(HDC);

__declspec(dllimport) int   __stdcall GetObjectA(HGDIOBJ, int, LPVOID);
__declspec(dllimport) int   __stdcall GetObjectW(HGDIOBJ, int, LPVOID);




#line 3576 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall MoveToEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall TextOutA(HDC, int, int, LPCSTR, int);
__declspec(dllimport) BOOL  __stdcall TextOutW(HDC, int, int, LPCWSTR, int);




#line 3584 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall ExtTextOutA(HDC, int, int, UINT, const RECT *,LPCSTR, UINT, const INT *);
__declspec(dllimport) BOOL  __stdcall ExtTextOutW(HDC, int, int, UINT, const RECT *,LPCWSTR, UINT, const INT *);




#line 3591 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall PolyTextOutA(HDC, const POLYTEXTA *, int);
__declspec(dllimport) BOOL  __stdcall PolyTextOutW(HDC, const POLYTEXTW *, int);




#line 3598 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) HRGN  __stdcall CreatePolygonRgn(const POINT *, int, int);
__declspec(dllimport) BOOL  __stdcall DPtoLP(HDC, LPPOINT, int);
__declspec(dllimport) BOOL  __stdcall LPtoDP(HDC, LPPOINT, int);
__declspec(dllimport) BOOL  __stdcall Polygon(HDC, const POINT *, int);
__declspec(dllimport) BOOL  __stdcall Polyline(HDC, const POINT *, int);

__declspec(dllimport) BOOL  __stdcall PolyBezier(HDC, const POINT *, DWORD);
__declspec(dllimport) BOOL  __stdcall PolyBezierTo(HDC, const POINT *, DWORD);
__declspec(dllimport) BOOL  __stdcall PolylineTo(HDC, const POINT *, DWORD);

__declspec(dllimport) BOOL  __stdcall SetViewportExtEx(HDC, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetViewportOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall SetWindowExtEx(HDC, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetWindowOrgEx(HDC, int, int, LPPOINT);

__declspec(dllimport) BOOL  __stdcall OffsetViewportOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall OffsetWindowOrgEx(HDC, int, int, LPPOINT);
__declspec(dllimport) BOOL  __stdcall ScaleViewportExtEx(HDC, int, int, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall ScaleWindowExtEx(HDC, int, int, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetBitmapDimensionEx(HBITMAP, int, int, LPSIZE);
__declspec(dllimport) BOOL  __stdcall SetBrushOrgEx(HDC, int, int, LPPOINT);

__declspec(dllimport) int   __stdcall GetTextFaceA(HDC, int, LPSTR);
__declspec(dllimport) int   __stdcall GetTextFaceW(HDC, int, LPWSTR);




#line 3628 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



typedef struct tagKERNINGPAIR {
   WORD wFirst;
   WORD wSecond;
   int  iKernAmount;
} KERNINGPAIR, *LPKERNINGPAIR;

__declspec(dllimport) DWORD __stdcall GetKerningPairsA(HDC, DWORD, LPKERNINGPAIR);
__declspec(dllimport) DWORD __stdcall GetKerningPairsW(HDC, DWORD, LPKERNINGPAIR);




#line 3644 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) BOOL  __stdcall GetDCOrgEx(HDC,LPPOINT);
__declspec(dllimport) BOOL  __stdcall FixBrushOrgEx(HDC,int,int,LPPOINT);
__declspec(dllimport) BOOL  __stdcall UnrealizeObject(HGDIOBJ);

__declspec(dllimport) BOOL  __stdcall GdiFlush();
__declspec(dllimport) DWORD __stdcall GdiSetBatchLimit(DWORD);
__declspec(dllimport) DWORD __stdcall GdiGetBatchLimit();









typedef int (__stdcall* ICMENUMPROCA)(LPSTR, LPARAM);
typedef int (__stdcall* ICMENUMPROCW)(LPWSTR, LPARAM);




#line 3668 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

__declspec(dllimport) int         __stdcall SetICMMode(HDC, int);
__declspec(dllimport) BOOL        __stdcall CheckColorsInGamut(HDC,LPVOID,LPVOID,DWORD);
__declspec(dllimport) HCOLORSPACE __stdcall GetColorSpace(HDC);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceA(HCOLORSPACE,LPLOGCOLORSPACEA,DWORD);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceW(HCOLORSPACE,LPLOGCOLORSPACEW,DWORD);




#line 3679 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceA(LPLOGCOLORSPACEA);
__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceW(LPLOGCOLORSPACEW);




#line 3686 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) HCOLORSPACE __stdcall SetColorSpace(HDC,HCOLORSPACE);
__declspec(dllimport) BOOL        __stdcall DeleteColorSpace(HCOLORSPACE);
__declspec(dllimport) BOOL        __stdcall GetICMProfileA(HDC,LPDWORD,LPSTR);
__declspec(dllimport) BOOL        __stdcall GetICMProfileW(HDC,LPDWORD,LPWSTR);




#line 3695 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall SetICMProfileA(HDC,LPSTR);
__declspec(dllimport) BOOL        __stdcall SetICMProfileW(HDC,LPWSTR);




#line 3702 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall GetDeviceGammaRamp(HDC,LPVOID);
__declspec(dllimport) BOOL        __stdcall SetDeviceGammaRamp(HDC,LPVOID);
__declspec(dllimport) BOOL        __stdcall ColorMatchToTarget(HDC,HDC,DWORD);
__declspec(dllimport) int         __stdcall EnumICMProfilesA(HDC,ICMENUMPROCA,LPARAM);
__declspec(dllimport) int         __stdcall EnumICMProfilesW(HDC,ICMENUMPROCW,LPARAM);




#line 3712 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL        __stdcall UpdateICMRegKeyA(DWORD,LPSTR,LPSTR,UINT);
__declspec(dllimport) BOOL        __stdcall UpdateICMRegKeyW(DWORD,LPWSTR,LPWSTR,UINT);




#line 3719 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
#line 3720 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 3724 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"









#line 3734 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




















































































































#line 3851 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


















#line 3870 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"





#line 3876 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



#line 3880 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"



typedef struct tagEMR
{
    DWORD   iType;              
    DWORD   nSize;              
                                
} EMR, *PEMR;



typedef struct tagEMRTEXT
{
    POINTL  ptlReference;
    DWORD   nChars;
    DWORD   offString;          
    DWORD   fOptions;
    RECTL   rcl;
    DWORD   offDx;              
                                
} EMRTEXT, *PEMRTEXT;



typedef struct tagABORTPATH
{
    EMR     emr;
} EMRABORTPATH,      *PEMRABORTPATH,
  EMRBEGINPATH,      *PEMRBEGINPATH,
  EMRENDPATH,        *PEMRENDPATH,
  EMRCLOSEFIGURE,    *PEMRCLOSEFIGURE,
  EMRFLATTENPATH,    *PEMRFLATTENPATH,
  EMRWIDENPATH,      *PEMRWIDENPATH,
  EMRSETMETARGN,     *PEMRSETMETARGN,
  EMRSAVEDC,         *PEMRSAVEDC,
  EMRREALIZEPALETTE, *PEMRREALIZEPALETTE;

typedef struct tagEMRSELECTCLIPPATH
{
    EMR     emr;
    DWORD   iMode;
} EMRSELECTCLIPPATH,    *PEMRSELECTCLIPPATH,
  EMRSETBKMODE,         *PEMRSETBKMODE,
  EMRSETMAPMODE,        *PEMRSETMAPMODE,
  EMRSETPOLYFILLMODE,   *PEMRSETPOLYFILLMODE,
  EMRSETROP2,           *PEMRSETROP2,
  EMRSETSTRETCHBLTMODE, *PEMRSETSTRETCHBLTMODE,
  EMRSETICMMODE,        *PEMRSETICMMODE,
  EMRSETTEXTALIGN,      *PEMRSETTEXTALIGN;

typedef struct tagEMRSETMITERLIMIT
{
    EMR     emr;
    FLOAT   eMiterLimit;
} EMRSETMITERLIMIT, *PEMRSETMITERLIMIT;

typedef struct tagEMRRESTOREDC
{
    EMR     emr;
    LONG    iRelative;          
} EMRRESTOREDC, *PEMRRESTOREDC;

typedef struct tagEMRSETARCDIRECTION
{
    EMR     emr;
    DWORD   iArcDirection;      
                                
} EMRSETARCDIRECTION, *PEMRSETARCDIRECTION;

typedef struct tagEMRSETMAPPERFLAGS
{
    EMR     emr;
    DWORD   dwFlags;
} EMRSETMAPPERFLAGS, *PEMRSETMAPPERFLAGS;

typedef struct tagEMRSETTEXTCOLOR
{
    EMR     emr;
    COLORREF crColor;
} EMRSETBKCOLOR,   *PEMRSETBKCOLOR,
  EMRSETTEXTCOLOR, *PEMRSETTEXTCOLOR;

typedef struct tagEMRSELECTOBJECT
{
    EMR     emr;
    DWORD   ihObject;           
} EMRSELECTOBJECT, *PEMRSELECTOBJECT,
  EMRDELETEOBJECT, *PEMRDELETEOBJECT;


typedef struct tagEMRSELECTCOLORSPACE
{
    EMR     emr;
    DWORD   ihCS;               
} EMRSELECTCOLORSPACE, *PEMRSELECTCOLORSPACE,
  EMRDELETECOLORSPACE, *PEMRDELETECOLORSPACE;
#line 3978 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagEMRSELECTPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
} EMRSELECTPALETTE, *PEMRSELECTPALETTE;

typedef struct tagEMRRESIZEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   cEntries;
} EMRRESIZEPALETTE, *PEMRRESIZEPALETTE;

typedef struct tagEMRSETPALETTEENTRIES
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   iStart;
    DWORD   cEntries;
    PALETTEENTRY aPalEntries[1];
} EMRSETPALETTEENTRIES, *PEMRSETPALETTEENTRIES;

typedef struct tagEMRSETCOLORADJUSTMENT
{
    EMR     emr;
    COLORADJUSTMENT ColorAdjustment;
} EMRSETCOLORADJUSTMENT, *PEMRSETCOLORADJUSTMENT;

typedef struct tagEMRGDICOMMENT
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGDICOMMENT, *PEMRGDICOMMENT;

typedef struct tagEMREOF
{
    EMR     emr;
    DWORD   nPalEntries;        
    DWORD   offPalEntries;      
    DWORD   nSizeLast;          
                                
                                
} EMREOF, *PEMREOF;

typedef struct tagEMRLINETO
{
    EMR     emr;
    POINTL  ptl;
} EMRLINETO,   *PEMRLINETO,
  EMRMOVETOEX, *PEMRMOVETOEX;

typedef struct tagEMROFFSETCLIPRGN
{
    EMR     emr;
    POINTL  ptlOffset;
} EMROFFSETCLIPRGN, *PEMROFFSETCLIPRGN;

typedef struct tagEMRFILLPATH
{
    EMR     emr;
    RECTL   rclBounds;          
} EMRFILLPATH,          *PEMRFILLPATH,
  EMRSTROKEANDFILLPATH, *PEMRSTROKEANDFILLPATH,
  EMRSTROKEPATH,        *PEMRSTROKEPATH;

typedef struct tagEMREXCLUDECLIPRECT
{
    EMR     emr;
    RECTL   rclClip;
} EMREXCLUDECLIPRECT,   *PEMREXCLUDECLIPRECT,
  EMRINTERSECTCLIPRECT, *PEMRINTERSECTCLIPRECT;

typedef struct tagEMRSETVIEWPORTORGEX
{
    EMR     emr;
    POINTL  ptlOrigin;
} EMRSETVIEWPORTORGEX, *PEMRSETVIEWPORTORGEX,
  EMRSETWINDOWORGEX,   *PEMRSETWINDOWORGEX,
  EMRSETBRUSHORGEX,    *PEMRSETBRUSHORGEX;

typedef struct tagEMRSETVIEWPORTEXTEX
{
    EMR     emr;
    SIZEL   szlExtent;
} EMRSETVIEWPORTEXTEX, *PEMRSETVIEWPORTEXTEX,
  EMRSETWINDOWEXTEX,   *PEMRSETWINDOWEXTEX;

typedef struct tagEMRSCALEVIEWPORTEXTEX
{
    EMR     emr;
    LONG    xNum;
    LONG    xDenom;
    LONG    yNum;
    LONG    yDenom;
} EMRSCALEVIEWPORTEXTEX, *PEMRSCALEVIEWPORTEXTEX,
  EMRSCALEWINDOWEXTEX,   *PEMRSCALEWINDOWEXTEX;

typedef struct tagEMRSETWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
} EMRSETWORLDTRANSFORM, *PEMRSETWORLDTRANSFORM;

typedef struct tagEMRMODIFYWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
    DWORD   iMode;
} EMRMODIFYWORLDTRANSFORM, *PEMRMODIFYWORLDTRANSFORM;

typedef struct tagEMRSETPIXELV
{
    EMR     emr;
    POINTL  ptlPixel;
    COLORREF crColor;
} EMRSETPIXELV, *PEMRSETPIXELV;

typedef struct tagEMREXTFLOODFILL
{
    EMR     emr;
    POINTL  ptlStart;
    COLORREF crColor;
    DWORD   iMode;
} EMREXTFLOODFILL, *PEMREXTFLOODFILL;

typedef struct tagEMRELLIPSE
{
    EMR     emr;
    RECTL   rclBox;             
} EMRELLIPSE,  *PEMRELLIPSE,
  EMRRECTANGLE, *PEMRRECTANGLE;

typedef struct tagEMRROUNDRECT
{
    EMR     emr;
    RECTL   rclBox;             
    SIZEL   szlCorner;
} EMRROUNDRECT, *PEMRROUNDRECT;

typedef struct tagEMRARC
{
    EMR     emr;
    RECTL   rclBox;             
    POINTL  ptlStart;
    POINTL  ptlEnd;
} EMRARC,   *PEMRARC,
  EMRARCTO, *PEMRARCTO,
  EMRCHORD, *PEMRCHORD,
  EMRPIE,   *PEMRPIE;

typedef struct tagEMRANGLEARC
{
    EMR     emr;
    POINTL  ptlCenter;
    DWORD   nRadius;
    FLOAT   eStartAngle;
    FLOAT   eSweepAngle;
} EMRANGLEARC, *PEMRANGLEARC;

typedef struct tagEMRPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;
    POINTL  aptl[1];
} EMRPOLYLINE,     *PEMRPOLYLINE,
  EMRPOLYBEZIER,   *PEMRPOLYBEZIER,
  EMRPOLYGON,      *PEMRPOLYGON,
  EMRPOLYBEZIERTO, *PEMRPOLYBEZIERTO,
  EMRPOLYLINETO,   *PEMRPOLYLINETO;

typedef struct tagEMRPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;
    POINTS  apts[1];
} EMRPOLYLINE16,     *PEMRPOLYLINE16,
  EMRPOLYBEZIER16,   *PEMRPOLYBEZIER16,
  EMRPOLYGON16,      *PEMRPOLYGON16,
  EMRPOLYBEZIERTO16, *PEMRPOLYBEZIERTO16,
  EMRPOLYLINETO16,   *PEMRPOLYLINETO16;

typedef struct tagEMRPOLYDRAW
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;               
    POINTL  aptl[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW, *PEMRPOLYDRAW;

typedef struct tagEMRPOLYDRAW16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;               
    POINTS  apts[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW16, *PEMRPOLYDRAW16;

typedef struct tagEMRPOLYPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cptl;               
    DWORD   aPolyCounts[1];     
    POINTL  aptl[1];            
} EMRPOLYPOLYLINE, *PEMRPOLYPOLYLINE,
  EMRPOLYPOLYGON,  *PEMRPOLYPOLYGON;

typedef struct tagEMRPOLYPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cpts;               
    DWORD   aPolyCounts[1];     
    POINTS  apts[1];            
} EMRPOLYPOLYLINE16, *PEMRPOLYPOLYLINE16,
  EMRPOLYPOLYGON16,  *PEMRPOLYPOLYGON16;

typedef struct tagEMRINVERTRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    BYTE    RgnData[1];
} EMRINVERTRGN, *PEMRINVERTRGN,
  EMRPAINTRGN,  *PEMRPAINTRGN;

typedef struct tagEMRFILLRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    BYTE    RgnData[1];
} EMRFILLRGN, *PEMRFILLRGN;

typedef struct tagEMRFRAMERGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    SIZEL   szlStroke;
    BYTE    RgnData[1];
} EMRFRAMERGN, *PEMRFRAMERGN;













#line 4244 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagEMREXTSELECTCLIPRGN
{
    EMR     emr;
    DWORD   cbRgnData;          
    DWORD   iMode;
    BYTE    RgnData[1];
} EMREXTSELECTCLIPRGN, *PEMREXTSELECTCLIPRGN;

typedef struct tagEMREXTTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    EMRTEXT emrtext;            
                                
} EMREXTTEXTOUTA, *PEMREXTTEXTOUTA,
  EMREXTTEXTOUTW, *PEMREXTTEXTOUTW;

typedef struct tagEMRPOLYTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    LONG    cStrings;
    EMRTEXT aemrtext[1];        
                                
} EMRPOLYTEXTOUTA, *PEMRPOLYTEXTOUTA,
  EMRPOLYTEXTOUTW, *PEMRPOLYTEXTOUTW;

typedef struct tagEMRBITBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
} EMRBITBLT, *PEMRBITBLT;

typedef struct tagEMRSTRETCHBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    cxSrc;
    LONG    cySrc;
} EMRSTRETCHBLT, *PEMRSTRETCHBLT;

typedef struct tagEMRMASKBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRMASKBLT, *PEMRMASKBLT;

typedef struct tagEMRPLGBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    POINTL  aptlDest[3];
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRPLGBLT, *PEMRPLGBLT;

typedef struct tagEMRSETDIBITSTODEVICE
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   iStartScan;
    DWORD   cScans;
} EMRSETDIBITSTODEVICE, *PEMRSETDIBITSTODEVICE;

typedef struct tagEMRSTRETCHDIBITS
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   dwRop;
    LONG    cxDest;
    LONG    cyDest;
} EMRSTRETCHDIBITS, *PEMRSTRETCHDIBITS;

















































#line 4464 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagEMREXTCREATEFONTINDIRECTW
{
    EMR     emr;
    DWORD   ihFont;             
    EXTLOGFONTW elfw;
} EMREXTCREATEFONTINDIRECTW, *PEMREXTCREATEFONTINDIRECTW;


typedef struct tagEMRCREATEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    LOGPALETTE lgpl;            
                                
} EMRCREATEPALETTE, *PEMRCREATEPALETTE;



typedef struct tagEMRCREATECOLORSPACE
{
    EMR             emr;
    DWORD           ihCS;       
    LOGCOLORSPACEW  lcs;
} EMRCREATECOLORSPACE, *PEMRCREATECOLORSPACE;

#line 4491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

typedef struct tagEMRCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    LOGPEN  lopn;
} EMRCREATEPEN, *PEMRCREATEPEN;

typedef struct tagEMREXTCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
    EXTLOGPEN elp;              
} EMREXTCREATEPEN, *PEMREXTCREATEPEN;

typedef struct tagEMRCREATEBRUSHINDIRECT
{
    EMR     emr;
    DWORD   ihBrush;            
    LOGBRUSH lb;                
                                
} EMRCREATEBRUSHINDIRECT, *PEMRCREATEBRUSHINDIRECT;

typedef struct tagEMRCREATEMONOBRUSH
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEMONOBRUSH, *PEMRCREATEMONOBRUSH;

typedef struct tagEMRCREATEDIBPATTERNBRUSHPT
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEDIBPATTERNBRUSHPT, *PEMRCREATEDIBPATTERNBRUSHPT;

typedef struct tagEMRFORMAT
{
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   cbData;             
    DWORD   offData;            
                                
} EMRFORMAT, *PEMRFORMAT;

typedef struct tagEMRGLSRECORD
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSRECORD, *PEMRGLSRECORD;

typedef struct tagEMRGLSBOUNDEDRECORD
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSBOUNDEDRECORD, *PEMRGLSBOUNDEDRECORD;

typedef struct tagEMRPIXELFORMAT
{
    EMR     emr;
    PIXELFORMATDESCRIPTOR pfd;
} EMRPIXELFORMAT, *PEMRPIXELFORMAT;



typedef struct tagEMRSETICMPROFILE
{
    EMR     emr;
    DWORD   dwFlags;            
    DWORD   cbName;             
    DWORD   cbData;             
    BYTE    Data[1];            
} EMRSETICMPROFILE, *PEMRSETICMPROFILE;








#line 4593 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"




__declspec(dllimport) BOOL  __stdcall wglCopyContext(HGLRC, HGLRC, UINT);
__declspec(dllimport) HGLRC __stdcall wglCreateContext(HDC);
__declspec(dllimport) HGLRC __stdcall wglCreateLayerContext(HDC, int);
__declspec(dllimport) BOOL  __stdcall wglDeleteContext(HGLRC);
__declspec(dllimport) HGLRC __stdcall wglGetCurrentContext(void);
__declspec(dllimport) HDC   __stdcall wglGetCurrentDC(void);
__declspec(dllimport) PROC  __stdcall wglGetProcAddress(LPCSTR);
__declspec(dllimport) BOOL  __stdcall wglMakeCurrent(HDC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglShareLists(HGLRC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsA(HDC, DWORD, DWORD, DWORD);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsW(HDC, DWORD, DWORD, DWORD);




#line 4613 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"
__declspec(dllimport) BOOL  __stdcall SwapBuffers(HDC);

typedef struct _POINTFLOAT {
    FLOAT   x;
    FLOAT   y;
} POINTFLOAT, *PPOINTFLOAT;

typedef struct _GLYPHMETRICSFLOAT {
    FLOAT       gmfBlackBoxX;
    FLOAT       gmfBlackBoxY;
    POINTFLOAT  gmfptGlyphOrigin;
    FLOAT       gmfCellIncX;
    FLOAT       gmfCellIncY;
} GLYPHMETRICSFLOAT, *PGLYPHMETRICSFLOAT,  *LPGLYPHMETRICSFLOAT;



__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesA(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);
__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesW(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);




#line 4639 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


typedef struct tagLAYERPLANEDESCRIPTOR { 
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerPlane;
    BYTE  bReserved;
    COLORREF crTransparent;
} LAYERPLANEDESCRIPTOR, *PLAYERPLANEDESCRIPTOR,  *LPLAYERPLANEDESCRIPTOR;

















































__declspec(dllimport) BOOL  __stdcall wglDescribeLayerPlane(HDC, int, int, UINT,
                                             LPLAYERPLANEDESCRIPTOR);
__declspec(dllimport) int   __stdcall wglSetLayerPaletteEntries(HDC, int, int, int,
                                                 const COLORREF *);
__declspec(dllimport) int   __stdcall wglGetLayerPaletteEntries(HDC, int, int, int,
                                                 COLORREF *);
__declspec(dllimport) BOOL  __stdcall wglRealizeLayerPalette(HDC, int, BOOL);
__declspec(dllimport) BOOL  __stdcall wglSwapLayerBuffers(HDC, UINT);













#line 4738 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 4740 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


}
#line 4744 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"


#line 4747 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wingdi.h"

#line 166 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




















#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






extern "C" {
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









typedef HANDLE HDWP;
typedef void MENUTEMPLATEA;
typedef void MENUTEMPLATEW;

typedef MENUTEMPLATEW MENUTEMPLATE;


#line 47 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
typedef PVOID LPMENUTEMPLATEA;
typedef PVOID LPMENUTEMPLATEW;

typedef LPMENUTEMPLATEW LPMENUTEMPLATE;


#line 54 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef LRESULT (__stdcall* WNDPROC)(HWND, UINT, WPARAM, LPARAM);



typedef BOOL (__stdcall* DLGPROC)(HWND, UINT, WPARAM, LPARAM);
typedef void (__stdcall* TIMERPROC)(HWND, UINT, UINT, DWORD);
typedef BOOL (__stdcall* GRAYSTRINGPROC)(HDC, LPARAM, int);
typedef BOOL (__stdcall* WNDENUMPROC)(HWND, LPARAM);
typedef LRESULT (__stdcall* HOOKPROC)(int code, WPARAM wParam, LPARAM lParam);
typedef void (__stdcall* SENDASYNCPROC)(HWND, UINT, DWORD, LRESULT);

typedef BOOL (__stdcall* PROPENUMPROCA)(HWND, LPCSTR, HANDLE);
typedef BOOL (__stdcall* PROPENUMPROCW)(HWND, LPCWSTR, HANDLE);

typedef BOOL (__stdcall* PROPENUMPROCEXA)(HWND, LPSTR, HANDLE, DWORD);
typedef BOOL (__stdcall* PROPENUMPROCEXW)(HWND, LPWSTR, HANDLE, DWORD);

typedef int (__stdcall* EDITWORDBREAKPROCA)(LPSTR lpch, int ichCurrent, int cch, int code);
typedef int (__stdcall* EDITWORDBREAKPROCW)(LPWSTR lpch, int ichCurrent, int cch, int code);


typedef BOOL (__stdcall* DRAWSTATEPROC)(HDC hdc, LPARAM lData, WPARAM wData, int cx, int cy);
#line 78 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















#line 100 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


typedef PROPENUMPROCW        PROPENUMPROC;
typedef PROPENUMPROCEXW      PROPENUMPROCEX;
typedef EDITWORDBREAKPROCW   EDITWORDBREAKPROC;




#line 110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



typedef BOOL (__stdcall* NAMEENUMPROCA)(LPSTR, LPARAM);
typedef BOOL (__stdcall* NAMEENUMPROCW)(LPWSTR, LPARAM);

typedef NAMEENUMPROCA   WINSTAENUMPROCA;
typedef NAMEENUMPROCA   DESKTOPENUMPROCA;
typedef NAMEENUMPROCW   WINSTAENUMPROCW;
typedef NAMEENUMPROCW   DESKTOPENUMPROCW;












#line 133 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


typedef WINSTAENUMPROCW     WINSTAENUMPROC;
typedef DESKTOPENUMPROCW    DESKTOPENUMPROC;






#line 144 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







#line 152 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




























#line 181 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 184 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
wvsprintfA(
    LPSTR,
    LPCSTR,
    va_list arglist);
__declspec(dllimport)
int
__stdcall
wvsprintfW(
    LPWSTR,
    LPCWSTR,
    va_list arglist);




#line 204 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport) int __cdecl wsprintfA(LPSTR, LPCSTR, ...);
__declspec(dllimport) int __cdecl wsprintfW(LPWSTR, LPCWSTR, ...);




#line 212 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






























#line 243 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"











































#line 287 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















#line 303 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




































































































































#line 436 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"













#line 450 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






















#line 473 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 478 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 483 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 485 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 488 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
































typedef struct tagCBT_CREATEWNDA
{
    struct tagCREATESTRUCTA *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDA, *LPCBT_CREATEWNDA;



typedef struct tagCBT_CREATEWNDW
{
    struct tagCREATESTRUCTW *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDW, *LPCBT_CREATEWNDW;

typedef CBT_CREATEWNDW CBT_CREATEWND;
typedef LPCBT_CREATEWNDW LPCBT_CREATEWND;



#line 540 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct tagCBTACTIVATESTRUCT
{
    BOOL    fMouse;
    HWND    hWndActive;
} CBTACTIVATESTRUCT, *LPCBTACTIVATESTRUCT;






























#line 580 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 581 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





typedef struct tagEVENTMSG {
    UINT    message;
    UINT    paramL;
    UINT    paramH;
    DWORD    time;
    HWND     hwnd;
} EVENTMSG, *PEVENTMSGMSG,  *NPEVENTMSGMSG,  *LPEVENTMSGMSG;

typedef struct tagEVENTMSG *PEVENTMSG,  *NPEVENTMSG,  *LPEVENTMSG;




typedef struct tagCWPSTRUCT {
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPSTRUCT, *PCWPSTRUCT,  *NPCWPSTRUCT,  *LPCWPSTRUCT;





typedef struct tagCWPRETSTRUCT {
    LRESULT lResult;
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPRETSTRUCT, *PCWPRETSTRUCT,  *NPCWPRETSTRUCT,  *LPCWPRETSTRUCT;

#line 619 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


































#line 654 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct tagDEBUGHOOKINFO
{
    DWORD   idThread;
    DWORD   idThreadInstaller;
    LPARAM  lParam;
    WPARAM  wParam;
    int     code;
} DEBUGHOOKINFO, *PDEBUGHOOKINFO,  *NPDEBUGHOOKINFO, * LPDEBUGHOOKINFO;




typedef struct tagMOUSEHOOKSTRUCT {
    POINT   pt;
    HWND    hwnd;
    UINT    wHitTestCode;
    DWORD   dwExtraInfo;
} MOUSEHOOKSTRUCT,  *LPMOUSEHOOKSTRUCT, *PMOUSEHOOKSTRUCT;




typedef struct tagHARDWAREHOOKSTRUCT {
    HWND    hwnd;
    UINT    message;
    WPARAM  wParam;
    LPARAM  lParam;
} HARDWAREHOOKSTRUCT,  *LPHARDWAREHOOKSTRUCT, *PHARDWAREHOOKSTRUCT;
#line 687 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 688 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















#line 704 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutA(
    LPCSTR pwszKLID,
    UINT Flags);
__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutW(
    LPCWSTR pwszKLID,
    UINT Flags);




#line 729 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
HKL
__stdcall
ActivateKeyboardLayout(
    HKL hkl,
    UINT Flags);







#line 746 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
ToUnicodeEx(
    UINT wVirtKey,
    UINT wScanCode,
    PBYTE lpKeyState,
    LPWSTR pwszBuff,
    int cchBuff,
    UINT wFlags,
    HKL dwhkl);
#line 760 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnloadKeyboardLayout(
    HKL hkl);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameA(
    LPSTR pwszKLID);
__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameW(
    LPWSTR pwszKLID);




#line 782 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
GetKeyboardLayoutList(
        int nBuff,
        HKL  *lpList);

__declspec(dllimport)
HKL
__stdcall
GetKeyboardLayout(
    DWORD dwLayout
);
#line 798 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

























#line 824 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"























__declspec(dllimport)
HDESK
__stdcall
CreateDesktopA(
    LPSTR lpszDesktop,
    LPSTR lpszDevice,
    LPDEVMODEA pDevmode,
    DWORD dwFlags,
    ACCESS_MASK dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HDESK
__stdcall
CreateDesktopW(
    LPWSTR lpszDesktop,
    LPWSTR lpszDevice,
    LPDEVMODEW pDevmode,
    DWORD dwFlags,
    ACCESS_MASK dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);




#line 872 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 874 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 875 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HDESK
__stdcall
OpenDesktopA(
    LPSTR lpszDesktop,
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HDESK
__stdcall
OpenDesktopW(
    LPWSTR lpszDesktop,
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);




#line 897 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HDESK
__stdcall
OpenInputDesktop(
    DWORD dwFlags,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);

__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsA(
    HWINSTA hwinsta,
    DESKTOPENUMPROCA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsW(
    HWINSTA hwinsta,
    DESKTOPENUMPROCW lpEnumFunc,
    LPARAM lParam);




#line 925 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EnumDesktopWindows(
    HDESK hDesktop,
    WNDENUMPROC lpfn,
    LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
SwitchDesktop(
    HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
SetThreadDesktop(
    HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
CloseDesktop(
    HDESK hDesktop);

__declspec(dllimport)
HDESK
__stdcall
GetThreadDesktop(
    DWORD dwThreadId);
#line 958 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationA(
    LPSTR               lpwinsta,
    DWORD                 dwReserved,
    ACCESS_MASK           dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationW(
    LPWSTR               lpwinsta,
    DWORD                 dwReserved,
    ACCESS_MASK           dwDesiredAccess,
    LPSECURITY_ATTRIBUTES lpsa);




#line 1000 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationA(
    LPSTR lpszWinSta,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationW(
    LPWSTR lpszWinSta,
    BOOL fInherit,
    ACCESS_MASK dwDesiredAccess);




#line 1020 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsA(
    WINSTAENUMPROCA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsW(
    WINSTAENUMPROCW lpEnumFunc,
    LPARAM lParam);




#line 1038 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
CloseWindowStation(
    HWINSTA hWinSta);

__declspec(dllimport)
BOOL
__stdcall
SetProcessWindowStation(
    HWINSTA hWinSta);

__declspec(dllimport)
HWINSTA
__stdcall
GetProcessWindowStation(
    void);
#line 1058 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
SetUserObjectSecurity(
    HANDLE hObj,
    PSECURITY_INFORMATION pSIRequested,
    PSECURITY_DESCRIPTOR pSID);

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectSecurity(
    HANDLE hObj,
    PSECURITY_INFORMATION pSIRequested,
    PSECURITY_DESCRIPTOR pSID,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);






typedef struct tagUSEROBJECTFLAGS {
    BOOL fInherit;
    BOOL fReserved;
    DWORD dwFlags;
} USEROBJECTFLAGS, *PUSEROBJECTFLAGS;

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationA(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);
__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationW(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength,
    LPDWORD lpnLengthNeeded);




#line 1113 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationA(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength);
__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationW(
    HANDLE hObj,
    int nIndex,
    PVOID pvInfo,
    DWORD nLength);




#line 1135 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 1137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


typedef struct tagWNDCLASSEXA {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXA, *PWNDCLASSEXA,  *NPWNDCLASSEXA,  *LPWNDCLASSEXA;
typedef struct tagWNDCLASSEXW {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXW, *PWNDCLASSEXW,  *NPWNDCLASSEXW,  *LPWNDCLASSEXW;

typedef WNDCLASSEXW WNDCLASSEX;
typedef PWNDCLASSEXW PWNDCLASSEX;
typedef NPWNDCLASSEXW NPWNDCLASSEX;
typedef LPWNDCLASSEXW LPWNDCLASSEX;





#line 1182 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 1183 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagWNDCLASSA {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
} WNDCLASSA, *PWNDCLASSA,  *NPWNDCLASSA,  *LPWNDCLASSA;
typedef struct tagWNDCLASSW {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
} WNDCLASSW, *PWNDCLASSW,  *NPWNDCLASSW,  *LPWNDCLASSW;

typedef WNDCLASSW WNDCLASS;
typedef PWNDCLASSW PWNDCLASS;
typedef NPWNDCLASSW NPWNDCLASS;
typedef LPWNDCLASSW LPWNDCLASS;





#line 1219 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







typedef struct tagMSG {
    HWND        hwnd;
    UINT        message;
    WPARAM      wParam;
    LPARAM      lParam;
    DWORD       time;
    POINT       pt;



} MSG, *PMSG,  *NPMSG,  *LPMSG;











#line 1249 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






























#line 1280 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 1282 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"










































#line 1325 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

















typedef struct tagMINMAXINFO {
    POINT ptReserved;
    POINT ptMaxSize;
    POINT ptMaxPosition;
    POINT ptMinTrackSize;
    POINT ptMaxTrackSize;
} MINMAXINFO, *PMINMAXINFO, *LPMINMAXINFO;



















#line 1369 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"























typedef struct tagCOPYDATASTRUCT {
    DWORD dwData;
    DWORD cbData;
    PVOID lpData;
} COPYDATASTRUCT, *PCOPYDATASTRUCT;























#line 1421 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




































#line 1458 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


















#line 1477 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


























#line 1504 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 1506 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 1510 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 1513 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









typedef struct tagMDINEXTMENU
{
    HMENU   hmenuIn;
    HMENU   hmenuNext;
    HWND    hwndNext;
} MDINEXTMENU, * PMDINEXTMENU,  * LPMDINEXTMENU;


































#line 1563 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



























#line 1591 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 1594 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 1598 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





#line 1604 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






























#line 1635 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







#line 1643 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




















#line 1664 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




































#line 1701 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 1711 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 1713 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

















__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageA(
    LPCSTR lpString);
__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageW(
    LPCWSTR lpString);




#line 1745 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

























typedef struct tagWINDOWPOS {
    HWND    hwnd;
    HWND    hwndInsertAfter;
    int     x;
    int     y;
    int     cx;
    int     cy;
    UINT    flags;
} WINDOWPOS, *LPWINDOWPOS, *PWINDOWPOS;




typedef struct tagNCCALCSIZE_PARAMS {
    RECT       rgrc[3];
    PWINDOWPOS lppos;
} NCCALCSIZE_PARAMS, *LPNCCALCSIZE_PARAMS;



























#line 1815 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





























#line 1845 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 1849 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


















































































#line 1932 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






















#line 1955 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




















































__declspec(dllimport)
BOOL
__stdcall
DrawEdge(HDC hdc, LPRECT qrc, UINT edge, UINT grfFlags);









#line 2021 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

































#line 2055 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
DrawFrameControl(HDC, LPRECT, UINT, UINT);










#line 2075 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawCaption(HWND, HDC, const RECT *, UINT);






__declspec(dllimport)
BOOL
__stdcall
DrawAnimatedRects(HWND hwnd, int idAni, const RECT * lprcFrom, const RECT * lprcTo);

#line 2092 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


























#line 2119 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















#line 2141 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"










typedef struct tagACCEL {

    BYTE   fVirt;               
    WORD   key;
    WORD   cmd;




#line 2161 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
} ACCEL, *LPACCEL;

typedef struct tagPAINTSTRUCT {
    HDC         hdc;
    BOOL        fErase;
    RECT        rcPaint;
    BOOL        fRestore;
    BOOL        fIncUpdate;
    BYTE        rgbReserved[32];
} PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;

typedef struct tagCREATESTRUCTA {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCSTR      lpszName;
    LPCSTR      lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTA, *LPCREATESTRUCTA;
typedef struct tagCREATESTRUCTW {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCWSTR     lpszName;
    LPCWSTR     lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTW, *LPCREATESTRUCTW;

typedef CREATESTRUCTW CREATESTRUCT;
typedef LPCREATESTRUCTW LPCREATESTRUCT;



#line 2207 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagWINDOWPLACEMENT {
    UINT  length;
    UINT  flags;
    UINT  showCmd;
    POINT ptMinPosition;
    POINT ptMaxPosition;
    RECT  rcNormalPosition;



} WINDOWPLACEMENT;
typedef WINDOWPLACEMENT *PWINDOWPLACEMENT, *LPWINDOWPLACEMENT;




typedef struct tagNMHDR
{
    HWND  hwndFrom;
    UINT  idFrom;
    UINT  code;         
}   NMHDR;
typedef NMHDR  * LPNMHDR;

typedef struct tagSTYLESTRUCT
{
    DWORD   styleOld;
    DWORD   styleNew;
} STYLESTRUCT, * LPSTYLESTRUCT;
#line 2238 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"











#line 2250 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



















#line 2270 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 2274 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct tagMEASUREITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    UINT       itemWidth;
    UINT       itemHeight;
    DWORD      itemData;
} MEASUREITEMSTRUCT,  *PMEASUREITEMSTRUCT,  *LPMEASUREITEMSTRUCT;





typedef struct tagDRAWITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    UINT        itemID;
    UINT        itemAction;
    UINT        itemState;
    HWND        hwndItem;
    HDC         hDC;
    RECT        rcItem;
    DWORD       itemData;
} DRAWITEMSTRUCT,  *PDRAWITEMSTRUCT,  *LPDRAWITEMSTRUCT;




typedef struct tagDELETEITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    HWND       hwndItem;
    UINT       itemData;
} DELETEITEMSTRUCT,  *PDELETEITEMSTRUCT,  *LPDELETEITEMSTRUCT;




typedef struct tagCOMPAREITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    HWND        hwndItem;
    UINT        itemID1;
    DWORD       itemData1;
    UINT        itemID2;
    DWORD       itemData2;
    DWORD       dwLocaleId;
} COMPAREITEMSTRUCT,  *PCOMPAREITEMSTRUCT,  *LPCOMPAREITEMSTRUCT;







__declspec(dllimport)
BOOL
__stdcall
GetMessageA(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax);
__declspec(dllimport)
BOOL
__stdcall
GetMessageW(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax);




#line 2355 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
TranslateMessage(
    const MSG *lpMsg);

__declspec(dllimport)
LONG
__stdcall
DispatchMessageA(
    const MSG *lpMsg);
__declspec(dllimport)
LONG
__stdcall
DispatchMessageW(
    const MSG *lpMsg);




#line 2377 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
SetMessageQueue(
    int cMessagesMax);

__declspec(dllimport)
BOOL
__stdcall
PeekMessageA(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax,
    UINT wRemoveMsg);
__declspec(dllimport)
BOOL
__stdcall
PeekMessageW(
    LPMSG lpMsg,
    HWND hWnd ,
    UINT wMsgFilterMin,
    UINT wMsgFilterMax,
    UINT wRemoveMsg);




#line 2408 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 2417 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
RegisterHotKey(
    HWND hWnd ,
    int id,
    UINT fsModifiers,
    UINT vk);

__declspec(dllimport)
BOOL
__stdcall
UnregisterHotKey(
    HWND hWnd,
    int id);






















#line 2456 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 2465 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
ExitWindowsEx(
    UINT uFlags,
    DWORD dwReserved);

__declspec(dllimport)
BOOL
__stdcall
SwapMouseButton(
    BOOL fSwap);

__declspec(dllimport)
DWORD
__stdcall
GetMessagePos(
    void);

__declspec(dllimport)
LONG
__stdcall
GetMessageTime(
    void);

__declspec(dllimport)
LONG
__stdcall
GetMessageExtraInfo(
    void);


__declspec(dllimport)
LPARAM
__stdcall
SetMessageExtraInfo(
    LPARAM lParam);
#line 2507 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LRESULT
__stdcall
SendMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2529 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    UINT fuFlags,
    UINT uTimeout,
    LPDWORD lpdwResult);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    UINT fuFlags,
    UINT uTimeout,
    LPDWORD lpdwResult);




#line 2557 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2579 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    SENDASYNCPROC lpResultCallBack,
    DWORD dwData);
__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam,
    SENDASYNCPROC lpResultCallBack,
    DWORD dwData);




#line 2605 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"











#line 2617 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 2620 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



















#line 2640 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





































#line 2678 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
PostMessageA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostMessageW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2701 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageA(
    DWORD idThread,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageW(
    DWORD idThread,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2723 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 2733 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 2742 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
AttachThreadInput(
    DWORD idAttach,
    DWORD idAttachTo,
    BOOL fAttach);


__declspec(dllimport)
BOOL
__stdcall
ReplyMessage(
    LRESULT lResult);

__declspec(dllimport)
BOOL
__stdcall
WaitMessage(
    void);

__declspec(dllimport)
DWORD
__stdcall
WaitForInputIdle(
    HANDLE hProcess,
    DWORD dwMilliseconds);

__declspec(dllimport)

LRESULT
__stdcall



#line 2779 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefWindowProcA(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 2792 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefWindowProcW(
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2802 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
void
__stdcall
PostQuitMessage(
    int nExitCode);



__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcA(
    WNDPROC lpPrevWndFunc,
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcW(
    WNDPROC lpPrevWndFunc,
    HWND hWnd,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 2834 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



























#line 2862 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
InSendMessage(
    void);
















#line 2885 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetDoubleClickTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetDoubleClickTime(
    UINT);

__declspec(dllimport)
ATOM
__stdcall
RegisterClassA(
    const WNDCLASSA *lpWndClass);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassW(
    const WNDCLASSW *lpWndClass);




#line 2913 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnregisterClassA(
    LPCSTR lpClassName,
    HINSTANCE hInstance);
__declspec(dllimport)
BOOL
__stdcall
UnregisterClassW(
    LPCWSTR lpClassName,
    HINSTANCE hInstance);




#line 2931 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClassInfoA(
    HINSTANCE hInstance ,
    LPCSTR lpClassName,
    LPWNDCLASSA lpWndClass);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoW(
    HINSTANCE hInstance ,
    LPCWSTR lpClassName,
    LPWNDCLASSW lpWndClass);




#line 2951 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
ATOM
__stdcall
RegisterClassExA(const WNDCLASSEXA *);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassExW(const WNDCLASSEXW *);




#line 2966 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExA(HINSTANCE, LPCSTR, LPWNDCLASSEXA);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExW(HINSTANCE, LPCWSTR, LPWNDCLASSEXW);




#line 2980 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 2982 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








__declspec(dllimport)
HWND
__stdcall
CreateWindowExA(
    DWORD dwExStyle,
    LPCSTR lpClassName,
    LPCSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent ,
    HMENU hMenu,
    HINSTANCE hInstance,
    LPVOID lpParam);
__declspec(dllimport)
HWND
__stdcall
CreateWindowExW(
    DWORD dwExStyle,
    LPCWSTR lpClassName,
    LPCWSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent ,
    HMENU hMenu,
    HINSTANCE hInstance,
    LPVOID lpParam);




#line 3027 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"













#line 3041 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsMenu(
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
IsChild(
    HWND hWndParent,
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
DestroyWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowWindow(
    HWND hWnd,
    int nCmdShow);









#line 3083 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
ShowWindowAsync(
    HWND hWnd,
    int nCmdShow);
#line 3092 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
FlashWindow(
    HWND hWnd,


#line 3101 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
    BOOL bInvert);
#line 3103 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 3112 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
ShowOwnedPopups(
    HWND hWnd,
    BOOL fShow);

__declspec(dllimport)
BOOL
__stdcall
OpenIcon(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
CloseWindow(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
MoveWindow(
    HWND hWnd,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    BOOL bRepaint);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPos(
    HWND hWnd,
    HWND hWndInsertAfter ,
    int X,
    int Y,
    int cx,
    int cy,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
GetWindowPlacement(
    HWND hWnd,
    WINDOWPLACEMENT *lpwndpl);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPlacement(
    HWND hWnd,
    const WINDOWPLACEMENT *lpwndpl);




__declspec(dllimport)
HDWP
__stdcall
BeginDeferWindowPos(
    int nNumWindows);

__declspec(dllimport)
HDWP
__stdcall
DeferWindowPos(
    HDWP hWinPosInfo,
    HWND hWnd,
    HWND hWndInsertAfter ,
    int x,
    int y,
    int cx,
    int cy,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
EndDeferWindowPos(
    HDWP hWinPosInfo);

#line 3198 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsWindowVisible(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsIconic(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
AnyPopup(
    void);

__declspec(dllimport)
BOOL
__stdcall
BringWindowToTop(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsZoomed(
    HWND hWnd);






















#line 3251 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"














#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#pragma pack(2)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack2.h"
#line 3266 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    WORD cdit;
    short x;
    short y;
    short cx;
    short cy;
} DLGTEMPLATE;
typedef DLGTEMPLATE *LPDLGTEMPLATEA;
typedef DLGTEMPLATE *LPDLGTEMPLATEW;

typedef LPDLGTEMPLATEW LPDLGTEMPLATE;


#line 3286 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
typedef const DLGTEMPLATE *LPCDLGTEMPLATEA;
typedef const DLGTEMPLATE *LPCDLGTEMPLATEW;

typedef LPCDLGTEMPLATEW LPCDLGTEMPLATE;


#line 3293 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    short x;
    short y;
    short cx;
    short cy;
    WORD id;
} DLGITEMTEMPLATE;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEW;

typedef PDLGITEMTEMPLATEW PDLGITEMTEMPLATE;


#line 3313 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEW;

typedef LPDLGITEMTEMPLATEW LPDLGITEMTEMPLATE;


#line 3320 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 3323 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
CreateDialogParamA(
    HINSTANCE hInstance,
    LPCSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogParamW(
    HINSTANCE hInstance,
    LPCWSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamA(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEA lpTemplate,
    HWND hWndParent,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamW(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEW lpTemplate,
    HWND hWndParent,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3371 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 3381 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 3391 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DialogBoxParamA(
    HINSTANCE hInstance,
    LPCSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
int
__stdcall
DialogBoxParamW(
    HINSTANCE hInstance,
    LPCWSTR lpTemplateName,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3415 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DialogBoxIndirectParamA(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEA hDialogTemplate,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);
__declspec(dllimport)
int
__stdcall
DialogBoxIndirectParamW(
    HINSTANCE hInstance,
    LPCDLGTEMPLATEW hDialogTemplate,
    HWND hWndParent ,
    DLGPROC lpDialogFunc,
    LPARAM dwInitParam);




#line 3439 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 3449 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 3459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EndDialog(
    HWND hDlg,
    int nResult);

__declspec(dllimport)
HWND
__stdcall
GetDlgItem(
    HWND hDlg,
    int nIDDlgItem);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemInt(
    HWND hDlg,
    int nIDDlgItem,
    UINT uValue,
    BOOL bSigned);

__declspec(dllimport)
UINT
__stdcall
GetDlgItemInt(
    HWND hDlg,
    int nIDDlgItem,
    BOOL *lpTranslated,
    BOOL bSigned);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextA(
    HWND hDlg,
    int nIDDlgItem,
    LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextW(
    HWND hDlg,
    int nIDDlgItem,
    LPCWSTR lpString);




#line 3511 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextA(
    HWND hDlg,
    int nIDDlgItem,
    LPSTR lpString,
    int nMaxCount);
__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextW(
    HWND hDlg,
    int nIDDlgItem,
    LPWSTR lpString,
    int nMaxCount);




#line 3533 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
CheckDlgButton(
    HWND hDlg,
    int nIDButton,
    UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
CheckRadioButton(
    HWND hDlg,
    int nIDFirstButton,
    int nIDLastButton,
    int nIDCheckButton);

__declspec(dllimport)
UINT
__stdcall
IsDlgButtonChecked(
    HWND hDlg,
    int nIDButton);

__declspec(dllimport)
LONG
__stdcall
SendDlgItemMessageA(
    HWND hDlg,
    int nIDDlgItem,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LONG
__stdcall
SendDlgItemMessageW(
    HWND hDlg,
    int nIDDlgItem,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 3581 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetNextDlgGroupItem(
    HWND hDlg,
    HWND hCtl,
    BOOL bPrevious);

__declspec(dllimport)
HWND
__stdcall
GetNextDlgTabItem(
    HWND hDlg,
    HWND hCtl,
    BOOL bPrevious);

__declspec(dllimport)
int
__stdcall
GetDlgCtrlID(
    HWND hWnd);

__declspec(dllimport)
long
__stdcall
GetDialogBaseUnits(void);

__declspec(dllimport)

LRESULT
__stdcall



#line 3617 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefDlgProcA(
    HWND hDlg,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 3630 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefDlgProcW(
    HWND hDlg,
    UINT Msg,
    WPARAM wParam,
    LPARAM lParam);




#line 3640 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 3649 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 3651 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterA(
    LPMSG lpMsg,
    int nCode);
__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterW(
    LPMSG lpMsg,
    int nCode);




#line 3671 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 3673 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







__declspec(dllimport)
BOOL
__stdcall
OpenClipboard(
    HWND hWndNewOwner);

__declspec(dllimport)
BOOL
__stdcall
CloseClipboard(
    void);








#line 3700 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetClipboardOwner(
    void);

__declspec(dllimport)
HWND
__stdcall
SetClipboardViewer(
    HWND hWndNewViewer);

__declspec(dllimport)
HWND
__stdcall
GetClipboardViewer(
    void);

__declspec(dllimport)
BOOL
__stdcall
ChangeClipboardChain(
    HWND hWndRemove,
    HWND hWndNewNext);

__declspec(dllimport)
HANDLE
__stdcall
SetClipboardData(
    UINT uFormat,
    HANDLE hMem);

__declspec(dllimport)
HANDLE
__stdcall
    GetClipboardData(
    UINT uFormat);

__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatA(
    LPCSTR lpszFormat);
__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatW(
    LPCWSTR lpszFormat);




#line 3754 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
CountClipboardFormats(
    void);

__declspec(dllimport)
UINT
__stdcall
EnumClipboardFormats(
    UINT format);

__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameA(
    UINT format,
    LPSTR lpszFormatName,
    int cchMaxCount);
__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameW(
    UINT format,
    LPWSTR lpszFormatName,
    int cchMaxCount);




#line 3786 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
EmptyClipboard(
    void);

__declspec(dllimport)
BOOL
__stdcall
IsClipboardFormatAvailable(
    UINT format);

__declspec(dllimport)
int
__stdcall
GetPriorityClipboardFormat(
    UINT *paFormatPriorityList,
    int cFormats);

__declspec(dllimport)
HWND
__stdcall
GetOpenClipboardWindow(
    void);

#line 3813 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
CharToOemA(
    LPCSTR lpszSrc,
    LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
CharToOemW(
    LPCWSTR lpszSrc,
    LPSTR lpszDst);




#line 3835 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
OemToCharA(
    LPCSTR lpszSrc,
    LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
OemToCharW(
    LPCSTR lpszSrc,
    LPWSTR lpszDst);




#line 3853 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffA(
    LPCSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffW(
    LPCWSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);




#line 3873 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffA(
    LPCSTR lpszSrc,
    LPSTR lpszDst,
    DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffW(
    LPCSTR lpszSrc,
    LPWSTR lpszDst,
    DWORD cchDstLength);




#line 3893 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharUpperA(
    LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharUpperW(
    LPWSTR lpsz);




#line 3909 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffA(
    LPSTR lpsz,
    DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffW(
    LPWSTR lpsz,
    DWORD cchLength);




#line 3927 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharLowerA(
    LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharLowerW(
    LPWSTR lpsz);




#line 3943 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffA(
    LPSTR lpsz,
    DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffW(
    LPWSTR lpsz,
    DWORD cchLength);




#line 3961 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharNextA(
    LPCSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharNextW(
    LPCWSTR lpsz);




#line 3977 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LPSTR
__stdcall
CharPrevA(
    LPCSTR lpszStart,
    LPCSTR lpszCurrent);
__declspec(dllimport)
LPWSTR
__stdcall
CharPrevW(
    LPCWSTR lpszStart,
    LPCWSTR lpszCurrent);




#line 3995 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
LPSTR
__stdcall
CharNextExA(
     WORD CodePage,
     LPCSTR lpCurrentChar,
     DWORD dwFlags);

__declspec(dllimport)
LPSTR
__stdcall
CharPrevExA(
     WORD CodePage,
     LPCSTR lpStart,
     LPCSTR lpCurrentChar,
     DWORD dwFlags);
#line 4014 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




















__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaW(
    WCHAR ch);




#line 4049 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericW(
    WCHAR ch);




#line 4065 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharUpperA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharUpperW(
    WCHAR ch);




#line 4081 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
IsCharLowerA(
    CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharLowerW(
    WCHAR ch);




#line 4097 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 4099 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
SetFocus(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetActiveWindow(
    void);

__declspec(dllimport)
HWND
__stdcall
GetFocus(
    void);

__declspec(dllimport)
UINT
__stdcall
GetKBCodePage(
    void);

__declspec(dllimport)
SHORT
__stdcall
GetKeyState(
    int nVirtKey);

__declspec(dllimport)
SHORT
__stdcall
GetAsyncKeyState(
    int vKey);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardState(
    PBYTE lpKeyState);

__declspec(dllimport)
BOOL
__stdcall
SetKeyboardState(
    LPBYTE lpKeyState);

__declspec(dllimport)
int
__stdcall
GetKeyNameTextA(
    LONG lParam,
    LPSTR lpString,
    int nSize
    );
__declspec(dllimport)
int
__stdcall
GetKeyNameTextW(
    LONG lParam,
    LPWSTR lpString,
    int nSize
    );




#line 4169 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetKeyboardType(
    int nTypeFlag);

__declspec(dllimport)
int
__stdcall
ToAscii(
    UINT uVirtKey,
    UINT uScanCode,
    PBYTE lpKeyState,
    LPWORD lpChar,
    UINT uFlags);


__declspec(dllimport)
int
__stdcall
ToAsciiEx(
    UINT uVirtKey,
    UINT uScanCode,
    PBYTE lpKeyState,
    LPWORD lpChar,
    UINT uFlags,
    HKL dwhkl);
#line 4198 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
ToUnicode(
    UINT wVirtKey,
    UINT wScanCode,
    PBYTE lpKeyState,
    LPWSTR pwszBuff,
    int cchBuff,
    UINT wFlags);

__declspec(dllimport)
DWORD
__stdcall
OemKeyScan(
    WORD wOemChar);

__declspec(dllimport)
SHORT
__stdcall
VkKeyScanA(
    CHAR ch);
__declspec(dllimport)
SHORT
__stdcall
VkKeyScanW(
    WCHAR ch);




#line 4231 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
SHORT
__stdcall VkKeyScanExA(
    CHAR  ch,
    HKL   dwhkl);
__declspec(dllimport)
SHORT
__stdcall VkKeyScanExW(
    WCHAR  ch,
    HKL   dwhkl);




#line 4248 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 4249 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
void
__stdcall
keybd_event(
    BYTE bVk,
    BYTE bScan,
    DWORD dwFlags,
    DWORD dwExtraInfo);











__declspec(dllimport)
void
__stdcall
mouse_event(
    DWORD dwFlags,
    DWORD dx,
    DWORD dy,
    DWORD dwData,
    DWORD dwExtraInfo);

















































#line 4330 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"












#line 4343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyA(
    UINT uCode,
    UINT uMapType);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyW(
    UINT uCode,
    UINT uMapType);




#line 4361 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExA(
    UINT uCode,
    UINT uMapType,
    HKL dwhkl);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExW(
    UINT uCode,
    UINT uMapType,
    HKL dwhkl);




#line 4382 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 4383 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetInputState(
    void);

__declspec(dllimport)
DWORD
__stdcall
GetQueueStatus(
    UINT flags);

__declspec(dllimport)
HWND
__stdcall
GetCapture(
    void);

__declspec(dllimport)
HWND
__stdcall
SetCapture(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ReleaseCapture(
    void);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjects(
    DWORD nCount,
    LPHANDLE pHandles,
    BOOL fWaitAll,
    DWORD dwMilliseconds,
    DWORD dwWakeMask);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjectsEx(
    DWORD nCount,
    LPHANDLE pHandles,
    DWORD dwMilliseconds,
    DWORD dwWakeMask,
    DWORD dwFlags);










































__declspec(dllimport)
UINT
__stdcall
SetTimer(
    HWND hWnd ,
    UINT nIDEvent,
    UINT uElapse,
    TIMERPROC lpTimerFunc);

__declspec(dllimport)
BOOL
__stdcall
KillTimer(
    HWND hWnd,
    UINT uIDEvent);

__declspec(dllimport)
BOOL
__stdcall
IsWindowUnicode(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
EnableWindow(
    HWND hWnd,
    BOOL bEnable);

__declspec(dllimport)
BOOL
__stdcall
IsWindowEnabled(
    HWND hWnd);

__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsA(
    HINSTANCE hInstance,
    LPCSTR lpTableName);
__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsW(
    HINSTANCE hInstance,
    LPCWSTR lpTableName);




#line 4527 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableA(
    LPACCEL, int);
__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableW(
    LPACCEL, int);




#line 4543 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DestroyAcceleratorTable(
    HACCEL hAccel);

__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableA(
    HACCEL hAccelSrc,
    LPACCEL lpAccelDst,
    int cAccelEntries);
__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableW(
    HACCEL hAccelSrc,
    LPACCEL lpAccelDst,
    int cAccelEntries);




#line 4569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
TranslateAcceleratorA(
    HWND hWnd,
    HACCEL hAccTable,
    LPMSG lpMsg);
__declspec(dllimport)
int
__stdcall
TranslateAcceleratorW(
    HWND hWnd,
    HACCEL hAccTable,
    LPMSG lpMsg);




#line 4591 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 4593 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

















































































#line 4675 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






#line 4682 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 4685 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







#line 4693 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





#line 4699 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetSystemMetrics(
    int nIndex);

#line 4707 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
HMENU
__stdcall
LoadMenuA(
    HINSTANCE hInstance,
    LPCSTR lpMenuName);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuW(
    HINSTANCE hInstance,
    LPCWSTR lpMenuName);




#line 4727 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectA(
    const MENUTEMPLATEA *lpMenuTemplate);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectW(
    const MENUTEMPLATEW *lpMenuTemplate);




#line 4743 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HMENU
__stdcall
GetMenu(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetMenu(
    HWND hWnd,
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
ChangeMenuA(
    HMENU hMenu,
    UINT cmd,
    LPCSTR lpszNewItem,
    UINT cmdInsert,
    UINT flags);
__declspec(dllimport)
BOOL
__stdcall
ChangeMenuW(
    HMENU hMenu,
    UINT cmd,
    LPCWSTR lpszNewItem,
    UINT cmdInsert,
    UINT flags);




#line 4780 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
HiliteMenuItem(
    HWND hWnd,
    HMENU hMenu,
    UINT uIDHiliteItem,
    UINT uHilite);

__declspec(dllimport)
int
__stdcall
GetMenuStringA(
    HMENU hMenu,
    UINT uIDItem,
    LPSTR lpString,
    int nMaxCount,
    UINT uFlag);
__declspec(dllimport)
int
__stdcall
GetMenuStringW(
    HMENU hMenu,
    UINT uIDItem,
    LPWSTR lpString,
    int nMaxCount,
    UINT uFlag);




#line 4813 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
GetMenuState(
    HMENU hMenu,
    UINT uId,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DrawMenuBar(
    HWND hWnd);


__declspec(dllimport)
HMENU
__stdcall
GetSystemMenu(
    HWND hWnd,
    BOOL bRevert);


__declspec(dllimport)
HMENU
__stdcall
CreateMenu(
    void);

__declspec(dllimport)
HMENU
__stdcall
CreatePopupMenu(
    void);

__declspec(dllimport)
BOOL
__stdcall
DestroyMenu(
    HMENU hMenu);

__declspec(dllimport)
DWORD
__stdcall
CheckMenuItem(
    HMENU hMenu,
    UINT uIDCheckItem,
    UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
EnableMenuItem(
    HMENU hMenu,
    UINT uIDEnableItem,
    UINT uEnable);

__declspec(dllimport)
HMENU
__stdcall
GetSubMenu(
    HMENU hMenu,
    int nPos);

__declspec(dllimport)
UINT
__stdcall
GetMenuItemID(
    HMENU hMenu,
    int nPos);

__declspec(dllimport)
int
__stdcall
GetMenuItemCount(
    HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
InsertMenuA(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
InsertMenuW(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4916 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
AppendMenuA(
    HMENU hMenu,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
AppendMenuW(
    HMENU hMenu,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4940 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
ModifyMenuA(
    HMENU hMnu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCSTR lpNewItem
    );
__declspec(dllimport)
BOOL
__stdcall
ModifyMenuW(
    HMENU hMnu,
    UINT uPosition,
    UINT uFlags,
    UINT uIDNewItem,
    LPCWSTR lpNewItem
    );




#line 4966 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall RemoveMenu(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DeleteMenu(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
SetMenuItemBitmaps(
    HMENU hMenu,
    UINT uPosition,
    UINT uFlags,
    HBITMAP hBitmapUnchecked,
    HBITMAP hBitmapChecked);

__declspec(dllimport)
LONG
__stdcall
GetMenuCheckMarkDimensions(
    void);

__declspec(dllimport)
BOOL
__stdcall
TrackPopupMenu(
    HMENU hMenu,
    UINT uFlags,
    int x,
    int y,
    int nReserved,
    HWND hWnd,
    const RECT *prcRect);








typedef struct tagTPMPARAMS
{
    UINT    cbSize;     
    RECT    rcExclude;  
}   TPMPARAMS;
typedef TPMPARAMS  *LPTPMPARAMS;

__declspec(dllimport) BOOL    __stdcall TrackPopupMenuEx(HMENU, UINT, int, int, HWND, LPTPMPARAMS);
#line 5026 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









































































#line 5100 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 5109 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

















#line 5127 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


typedef struct tagMENUITEMINFOA
{
    UINT    cbSize;
    UINT    fMask;
    UINT    fType;          
    UINT    fState;         
    UINT    wID;            
    HMENU   hSubMenu;       
    HBITMAP hbmpChecked;    
    HBITMAP hbmpUnchecked;  
    DWORD   dwItemData;     
    LPSTR   dwTypeData;     
    UINT    cch;            


#line 5145 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
}   MENUITEMINFOA,  *LPMENUITEMINFOA;
typedef struct tagMENUITEMINFOW
{
    UINT    cbSize;
    UINT    fMask;
    UINT    fType;          
    UINT    fState;         
    UINT    wID;            
    HMENU   hSubMenu;       
    HBITMAP hbmpChecked;    
    HBITMAP hbmpUnchecked;  
    DWORD   dwItemData;     
    LPWSTR  dwTypeData;     
    UINT    cch;            


#line 5162 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
}   MENUITEMINFOW,  *LPMENUITEMINFOW;

typedef MENUITEMINFOW MENUITEMINFO;
typedef LPMENUITEMINFOW LPMENUITEMINFO;



#line 5170 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
typedef MENUITEMINFOA const  *LPCMENUITEMINFOA;
typedef MENUITEMINFOW const  *LPCMENUITEMINFOW;

typedef LPCMENUITEMINFOW LPCMENUITEMINFO;


#line 5177 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemA(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemW(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOW
    );




#line 5201 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoA(
    HMENU,
    UINT,
    BOOL,
    LPMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoW(
    HMENU,
    UINT,
    BOOL,
    LPMENUITEMINFOW
    );




#line 5225 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoA(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOA
    );
__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoW(
    HMENU,
    UINT,
    BOOL,
    LPCMENUITEMINFOW
    );




#line 5249 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





__declspec(dllimport) UINT    __stdcall GetMenuDefaultItem(HMENU hMenu, UINT fByPos, UINT gmdiFlags);
__declspec(dllimport) BOOL    __stdcall SetMenuDefaultItem(HMENU hMenu, UINT uItem, UINT fByPos);

__declspec(dllimport) BOOL    __stdcall GetMenuItemRect(HWND hWnd, HMENU hMenu, UINT uItem, LPRECT lprcItem);
__declspec(dllimport) int     __stdcall MenuItemFromPoint(HWND hWnd, HMENU hMenu, POINT ptScreen);
#line 5260 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


















#line 5279 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 5282 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 5285 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







typedef struct tagDROPSTRUCT
{
    HWND    hwndSource;
    HWND    hwndSink;
    DWORD   wFmt;
    DWORD   dwData;
    POINT   ptDrop;
    DWORD   dwControlData;
} DROPSTRUCT, *PDROPSTRUCT, *LPDROPSTRUCT;











__declspec(dllimport)
DWORD
__stdcall
DragObject(HWND, HWND, UINT, DWORD, HCURSOR);

__declspec(dllimport)
BOOL
__stdcall
DragDetect(HWND, POINT);
#line 5322 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawIcon(
    HDC hDC,
    int X,
    int Y,
    HICON hIcon);































typedef struct tagDRAWTEXTPARAMS
{
    UINT    cbSize;
    int     iTabLength;
    int     iLeftMargin;
    int     iRightMargin;
    UINT    uiLengthDrawn;
} DRAWTEXTPARAMS,  *LPDRAWTEXTPARAMS;
#line 5371 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
int
__stdcall
DrawTextA(
    HDC hDC,
    LPCSTR lpString,
    int nCount,
    LPRECT lpRect,
    UINT uFormat);
__declspec(dllimport)
int
__stdcall
DrawTextW(
    HDC hDC,
    LPCWSTR lpString,
    int nCount,
    LPRECT lpRect,
    UINT uFormat);




#line 5396 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
DrawTextExA(HDC, LPSTR, int, LPRECT, UINT, LPDRAWTEXTPARAMS);
__declspec(dllimport)
int
__stdcall
DrawTextExW(HDC, LPWSTR, int, LPRECT, UINT, LPDRAWTEXTPARAMS);




#line 5412 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 5413 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 5415 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GrayStringA(
    HDC hDC,
    HBRUSH hBrush,
    GRAYSTRINGPROC lpOutputFunc,
    LPARAM lpData,
    int nCount,
    int X,
    int Y,
    int nWidth,
    int nHeight);
__declspec(dllimport)
BOOL
__stdcall
GrayStringW(
    HDC hDC,
    HBRUSH hBrush,
    GRAYSTRINGPROC lpOutputFunc,
    LPARAM lpData,
    int nCount,
    int X,
    int Y,
    int nWidth,
    int nHeight);




#line 5447 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

















__declspec(dllimport) BOOL __stdcall DrawStateA(HDC, HBRUSH, DRAWSTATEPROC, LPARAM, WPARAM, int, int, int, int, UINT);
__declspec(dllimport) BOOL __stdcall DrawStateW(HDC, HBRUSH, DRAWSTATEPROC, LPARAM, WPARAM, int, int, int, int, UINT);




#line 5471 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 5472 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
TabbedTextOutA(
    HDC hDC,
    int X,
    int Y,
    LPCSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions,
    int nTabOrigin);
__declspec(dllimport)
LONG
__stdcall
TabbedTextOutW(
    HDC hDC,
    int X,
    int Y,
    LPCWSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions,
    int nTabOrigin);




#line 5502 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentA(
    HDC hDC,
    LPCSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions);
__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentW(
    HDC hDC,
    LPCWSTR lpString,
    int nCount,
    int nTabPositions,
    LPINT lpnTabStopPositions);




#line 5526 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UpdateWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetActiveWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetForegroundWindow(
    void);


__declspec(dllimport) BOOL __stdcall PaintDesktop(HDC hdc);

#line 5549 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetForegroundWindow(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
WindowFromDC(
    HDC hDC);

__declspec(dllimport)
HDC
__stdcall
GetDC(
    HWND hWnd);

__declspec(dllimport)
HDC
__stdcall
GetDCEx(
    HWND hWnd ,
    HRGN hrgnClip,
    DWORD flags);























__declspec(dllimport)
BOOL
__stdcall
AlignRects(LPRECT arc, DWORD cCount, DWORD iPrimary, DWORD dwFlags);













__declspec(dllimport)
HDC
__stdcall
GetWindowDC(
    HWND hWnd);

__declspec(dllimport)
int
__stdcall
ReleaseDC(
    HWND hWnd,
    HDC hDC);

__declspec(dllimport)
HDC
__stdcall
BeginPaint(
    HWND hWnd,
    LPPAINTSTRUCT lpPaint);

__declspec(dllimport)
BOOL
__stdcall
EndPaint(
    HWND hWnd,
    const PAINTSTRUCT *lpPaint);

__declspec(dllimport)
BOOL
__stdcall
GetUpdateRect(
    HWND hWnd,
    LPRECT lpRect,
    BOOL bErase);

__declspec(dllimport)
int
__stdcall
GetUpdateRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bErase);

__declspec(dllimport)
int
__stdcall
SetWindowRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bRedraw);

__declspec(dllimport)
int
__stdcall
GetWindowRgn(
    HWND hWnd,
    HRGN hRgn);

__declspec(dllimport)
int
__stdcall
ExcludeUpdateRgn(
    HDC hDC,
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRect(
    HWND hWnd ,
    const RECT *lpRect,
    BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRect(
    HWND hWnd ,
    const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRgn(
    HWND hWnd,
    HRGN hRgn,
    BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRgn(
    HWND hWnd,
    HRGN hRgn);


__declspec(dllimport)
BOOL
__stdcall
RedrawWindow(
    HWND hWnd,
    const RECT *lprcUpdate,
    HRGN hrgnUpdate,
    UINT flags);


























__declspec(dllimport)
BOOL
__stdcall
LockWindowUpdate(
    HWND hWndLock);

__declspec(dllimport)
BOOL
__stdcall
ScrollWindow(
    HWND hWnd,
    int XAmount,
    int YAmount,
    const RECT *lpRect,
    const RECT *lpClipRect);

__declspec(dllimport)
BOOL
__stdcall
ScrollDC(
    HDC hDC,
    int dx,
    int dy,
    const RECT *lprcScroll,
    const RECT *lprcClip ,
    HRGN hrgnUpdate,
    LPRECT lprcUpdate);

__declspec(dllimport)
int
__stdcall
ScrollWindowEx(
    HWND hWnd,
    int dx,
    int dy,
    const RECT *prcScroll,
    const RECT *prcClip ,
    HRGN hrgnUpdate,
    LPRECT prcUpdate,
    UINT flags);






#line 5792 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
int
__stdcall
SetScrollPos(
    HWND hWnd,
    int nBar,
    int nPos,
    BOOL bRedraw);

__declspec(dllimport)
int
__stdcall
GetScrollPos(
    HWND hWnd,
    int nBar);

__declspec(dllimport)
BOOL
__stdcall
SetScrollRange(
    HWND hWnd,
    int nBar,
    int nMinPos,
    int nMaxPos,
    BOOL bRedraw);

__declspec(dllimport)
BOOL
__stdcall
GetScrollRange(
    HWND hWnd,
    int nBar,
    LPINT lpMinPos,
    LPINT lpMaxPos);

__declspec(dllimport)
BOOL
__stdcall
ShowScrollBar(
    HWND hWnd,
    int wBar,
    BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
EnableScrollBar(
    HWND hWnd,
    UINT wSBflags,
    UINT wArrows);


















#line 5864 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetPropA(
    HWND hWnd,
    LPCSTR lpString,
    HANDLE hData);
__declspec(dllimport)
BOOL
__stdcall
SetPropW(
    HWND hWnd,
    LPCWSTR lpString,
    HANDLE hData);




#line 5884 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
GetPropA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
GetPropW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5902 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
RemovePropA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
RemovePropW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5920 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
EnumPropsExA(
    HWND hWnd,
    PROPENUMPROCEXA lpEnumFunc,
    LPARAM lParam);
__declspec(dllimport)
int
__stdcall
EnumPropsExW(
    HWND hWnd,
    PROPENUMPROCEXW lpEnumFunc,
    LPARAM lParam);




#line 5940 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
EnumPropsA(
    HWND hWnd,
    PROPENUMPROCA lpEnumFunc);
__declspec(dllimport)
int
__stdcall
EnumPropsW(
    HWND hWnd,
    PROPENUMPROCW lpEnumFunc);




#line 5958 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetWindowTextA(
    HWND hWnd,
    LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetWindowTextW(
    HWND hWnd,
    LPCWSTR lpString);




#line 5976 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetWindowTextA(
    HWND hWnd,
    LPSTR lpString,
    int nMaxCount);
__declspec(dllimport)
int
__stdcall
GetWindowTextW(
    HWND hWnd,
    LPWSTR lpString,
    int nMaxCount);




#line 5996 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
GetWindowTextLengthA(
    HWND hWnd);
__declspec(dllimport)
int
__stdcall
GetWindowTextLengthW(
    HWND hWnd);




#line 6012 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
GetClientRect(
    HWND hWnd,
    LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetWindowRect(
    HWND hWnd,
    LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRect(
    LPRECT lpRect,
    DWORD dwStyle,
    BOOL bMenu);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRectEx(
    LPRECT lpRect,
    DWORD dwStyle,
    BOOL bMenu,
    DWORD dwExStyle);




typedef struct tagHELPINFO      
{
    UINT    cbSize;             
    int     iContextType;       
    int     iCtrlId;            
    HANDLE  hItemHandle;        
    DWORD   dwContextId;        
    POINT   MousePos;           
}  HELPINFO,  *LPHELPINFO;

__declspec(dllimport) BOOL  __stdcall  SetWindowContextHelpId(HWND, DWORD);
__declspec(dllimport) DWORD __stdcall  GetWindowContextHelpId(HWND);
__declspec(dllimport) BOOL  __stdcall  SetMenuContextHelpId(HMENU, DWORD);
__declspec(dllimport) DWORD __stdcall  GetMenuContextHelpId(HMENU);

#line 6063 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
























#line 6088 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 6098 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






#line 6105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"











#line 6117 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
















__declspec(dllimport)
int
__stdcall
MessageBoxA(
    HWND hWnd ,
    LPCSTR lpText,
    LPCSTR lpCaption,
    UINT uType);
__declspec(dllimport)
int
__stdcall
MessageBoxW(
    HWND hWnd ,
    LPCWSTR lpText,
    LPCWSTR lpCaption,
    UINT uType);




#line 6154 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
MessageBoxExA(
    HWND hWnd ,
    LPCSTR lpText,
    LPCSTR lpCaption,
    UINT uType,
    WORD wLanguageId);
__declspec(dllimport)
int
__stdcall
MessageBoxExW(
    HWND hWnd ,
    LPCWSTR lpText,
    LPCWSTR lpCaption,
    UINT uType,
    WORD wLanguageId);




#line 6178 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



typedef void (__stdcall *MSGBOXCALLBACK)(LPHELPINFO lpHelpInfo);

typedef struct tagMSGBOXPARAMSA
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCSTR      lpszText;
    LPCSTR      lpszCaption;
    DWORD       dwStyle;
    LPCSTR      lpszIcon;
    DWORD       dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD   dwLanguageId;
} MSGBOXPARAMSA, *PMSGBOXPARAMSA, *LPMSGBOXPARAMSA;
typedef struct tagMSGBOXPARAMSW
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCWSTR     lpszText;
    LPCWSTR     lpszCaption;
    DWORD       dwStyle;
    LPCWSTR     lpszIcon;
    DWORD       dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD   dwLanguageId;
} MSGBOXPARAMSW, *PMSGBOXPARAMSW, *LPMSGBOXPARAMSW;

typedef MSGBOXPARAMSW MSGBOXPARAMS;
typedef PMSGBOXPARAMSW PMSGBOXPARAMS;
typedef LPMSGBOXPARAMSW LPMSGBOXPARAMS;




#line 6218 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport) int     __stdcall MessageBoxIndirectA(LPMSGBOXPARAMSA);
__declspec(dllimport) int     __stdcall MessageBoxIndirectW(LPMSGBOXPARAMSW);




#line 6227 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 6228 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
MessageBeep(
    UINT uType);

#line 6238 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
ShowCursor(
    BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
SetCursorPos(
    int X,
    int Y);

__declspec(dllimport)
HCURSOR
__stdcall
SetCursor(
    HCURSOR hCursor);

__declspec(dllimport)
BOOL
__stdcall
GetCursorPos(
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClipCursor(
    const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetClipCursor(
    LPRECT lpRect);

__declspec(dllimport)
HCURSOR
__stdcall
GetCursor(
    void);

__declspec(dllimport)
BOOL
__stdcall
CreateCaret(
    HWND hWnd,
    HBITMAP hBitmap ,
    int nWidth,
    int nHeight);

__declspec(dllimport)
UINT
__stdcall
GetCaretBlinkTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetCaretBlinkTime(
    UINT uMSeconds);

__declspec(dllimport)
BOOL
__stdcall
DestroyCaret(
    void);

__declspec(dllimport)
BOOL
__stdcall
HideCaret(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowCaret(
    HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetCaretPos(
    int X,
    int Y);

__declspec(dllimport)
BOOL
__stdcall
GetCaretPos(
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClientToScreen(
    HWND hWnd,
    LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ScreenToClient(
    HWND hWnd,
    LPPOINT lpPoint);

__declspec(dllimport)
int
__stdcall
MapWindowPoints(
    HWND hWndFrom,
    HWND hWndTo,
    LPPOINT lpPoints,
    UINT cPoints);

__declspec(dllimport)
HWND
__stdcall
WindowFromPoint(
    POINT Point);

__declspec(dllimport)
HWND
__stdcall
ChildWindowFromPoint(
    HWND hWndParent,
    POINT Point);







__declspec(dllimport) HWND    __stdcall ChildWindowFromPointEx(HWND, POINT, UINT);
#line 6378 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"










































#line 6421 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





#line 6427 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 6436 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
DWORD
__stdcall
GetSysColor(
    int nIndex);


__declspec(dllimport)
HBRUSH
__stdcall
GetSysColorBrush(
    int nIndex);


#line 6453 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetSysColors(
    int cElements,
    const INT * lpaElements,
    const COLORREF * lpaRgbValues);

#line 6463 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DrawFocusRect(
    HDC hDC,
    const RECT * lprc);

__declspec(dllimport)
int
__stdcall
FillRect(
    HDC hDC,
    const RECT *lprc,
    HBRUSH hbr);

__declspec(dllimport)
int
__stdcall
FrameRect(
    HDC hDC,
    const RECT *lprc,
    HBRUSH hbr);

__declspec(dllimport)
BOOL
__stdcall
InvertRect(
    HDC hDC,
    const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
SetRect(
    LPRECT lprc,
    int xLeft,
    int yTop,
    int xRight,
    int yBottom);

__declspec(dllimport)
BOOL
__stdcall
    SetRectEmpty(
    LPRECT lprc);

__declspec(dllimport)
BOOL
__stdcall
CopyRect(
    LPRECT lprcDst,
    const RECT *lprcSrc);

__declspec(dllimport)
BOOL
__stdcall
InflateRect(
    LPRECT lprc,
    int dx,
    int dy);

__declspec(dllimport)
BOOL
__stdcall
IntersectRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
UnionRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
SubtractRect(
    LPRECT lprcDst,
    const RECT *lprcSrc1,
    const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
OffsetRect(
    LPRECT lprc,
    int dx,
    int dy);

__declspec(dllimport)
BOOL
__stdcall
IsRectEmpty(
    const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
EqualRect(
    const RECT *lprc1,
    const RECT *lprc2);

__declspec(dllimport)
BOOL
__stdcall
PtInRect(
    const RECT *lprc,
    POINT pt);



__declspec(dllimport)
WORD
__stdcall
GetWindowWord(
    HWND hWnd,
    int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetWindowWord(
    HWND hWnd,
    int nIndex,
    WORD wNewWord);

__declspec(dllimport)
LONG
__stdcall
GetWindowLongA(
    HWND hWnd,
    int nIndex);
__declspec(dllimport)
LONG
__stdcall
GetWindowLongW(
    HWND hWnd,
    int nIndex);




#line 6611 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
SetWindowLongA(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);
__declspec(dllimport)
LONG
__stdcall
SetWindowLongW(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);




#line 6631 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
WORD
__stdcall
GetClassWord(
    HWND hWnd,
    int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetClassWord(
    HWND hWnd,
    int nIndex,
    WORD wNewWord);

__declspec(dllimport)
DWORD
__stdcall
GetClassLongA(
    HWND hWnd,
    int nIndex);
__declspec(dllimport)
DWORD
__stdcall
GetClassLongW(
    HWND hWnd,
    int nIndex);




#line 6664 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
DWORD
__stdcall
SetClassLongA(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);
__declspec(dllimport)
DWORD
__stdcall
SetClassLongW(
    HWND hWnd,
    int nIndex,
    LONG dwNewLong);




#line 6684 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 6686 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetDesktopWindow(
    void);


__declspec(dllimport)
HWND
__stdcall
GetParent(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetParent(
    HWND hWndChild,
    HWND hWndNewParent);

__declspec(dllimport)
BOOL
__stdcall
EnumChildWindows(
    HWND hWndParent,
    WNDENUMPROC lpEnumFunc,
    LPARAM lParam);

__declspec(dllimport)
HWND
__stdcall
FindWindowA(
    LPCSTR lpClassName ,
    LPCSTR lpWindowName);
__declspec(dllimport)
HWND
__stdcall
FindWindowW(
    LPCWSTR lpClassName ,
    LPCWSTR lpWindowName);




#line 6732 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport) HWND    __stdcall FindWindowExA(HWND, HWND, LPCSTR, LPCSTR);
__declspec(dllimport) HWND    __stdcall FindWindowExW(HWND, HWND, LPCWSTR, LPCWSTR);




#line 6741 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 6743 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
EnumWindows(
    WNDENUMPROC lpEnumFunc,
    LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
EnumThreadWindows(
    DWORD dwThreadId,
    WNDENUMPROC lpfn,
    LPARAM lParam);



__declspec(dllimport)
int
__stdcall
GetClassNameA(
    HWND hWnd,
    LPSTR lpClassName,
    int nMaxCount);
__declspec(dllimport)
int
__stdcall
GetClassNameW(
    HWND hWnd,
    LPWSTR lpClassName,
    int nMaxCount);




#line 6781 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetTopWindow(
    HWND hWnd);





__declspec(dllimport)
DWORD
__stdcall
GetWindowThreadProcessId(
    HWND hWnd,
    LPDWORD lpdwProcessId);




__declspec(dllimport)
HWND
__stdcall
GetLastActivePopup(
    HWND hWnd);















#line 6823 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HWND
__stdcall
GetWindow(
    HWND hWnd,
    UINT uCmd);







__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookA(
    int nFilterType,
    HOOKPROC pfnFilterProc);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookW(
    int nFilterType,
    HOOKPROC pfnFilterProc);




#line 6854 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















#line 6876 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHook(
    int nCode,
    HOOKPROC pfnFilterProc);

__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExA(
    int idHook,
    HOOKPROC lpfn,
    HINSTANCE hmod,
    DWORD dwThreadId);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExW(
    int idHook,
    HOOKPROC lpfn,
    HINSTANCE hmod,
    DWORD dwThreadId);




#line 6905 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHookEx(
    HHOOK hhk);

__declspec(dllimport)
LRESULT
__stdcall
CallNextHookEx(
    HHOOK hhk,
    int nCode,
    WPARAM wParam,
    LPARAM lParam);










#line 6931 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 6933 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









































#line 6975 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 6980 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 6985 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





























#line 7015 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 7017 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





__declspec(dllimport)
BOOL
__stdcall
CheckMenuRadioItem(HMENU, UINT, UINT, UINT, UINT);
#line 7027 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct {
    WORD versionNumber;
    WORD offset;
} MENUITEMTEMPLATEHEADER, *PMENUITEMTEMPLATEHEADER;

typedef struct {        
    WORD mtOption;
    WORD mtID;
    WCHAR mtString[1];
} MENUITEMTEMPLATE, *PMENUITEMTEMPLATE;


#line 7044 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




























#line 7073 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







#line 7081 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapA(
    HINSTANCE hInstance,
    LPCSTR lpBitmapName);
__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapW(
    HINSTANCE hInstance,
    LPCWSTR lpBitmapName);




#line 7103 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorA(
    HINSTANCE hInstance,
    LPCSTR lpCursorName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorW(
    HINSTANCE hInstance,
    LPCWSTR lpCursorName);




#line 7121 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileA(
    LPCSTR    lpFileName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileW(
    LPCWSTR    lpFileName);




#line 7137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HCURSOR
__stdcall
CreateCursor(
    HINSTANCE hInst,
    int xHotSpot,
    int yHotSpot,
    int nWidth,
    int nHeight,
    const void *pvANDPlane,
    const void *pvXORPlane);

__declspec(dllimport)
BOOL
__stdcall
DestroyCursor(
    HCURSOR hCursor);









#line 7165 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



















#line 7185 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 7189 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
SetSystemCursor(
    HCURSOR hcur,
    DWORD   id);

typedef struct _ICONINFO {
    BOOL    fIcon;
    DWORD   xHotspot;
    DWORD   yHotspot;
    HBITMAP hbmMask;
    HBITMAP hbmColor;
} ICONINFO;
typedef ICONINFO *PICONINFO;

__declspec(dllimport)
HICON
__stdcall
LoadIconA(
    HINSTANCE hInstance,
    LPCSTR lpIconName);
__declspec(dllimport)
HICON
__stdcall
LoadIconW(
    HINSTANCE hInstance,
    LPCWSTR lpIconName);




#line 7223 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
HICON
__stdcall
CreateIcon(
    HINSTANCE hInstance,
    int nWidth,
    int nHeight,
    BYTE cPlanes,
    BYTE cBitsPixel,
    const BYTE *lpbANDbits,
    const BYTE *lpbXORbits);

__declspec(dllimport)
BOOL
__stdcall
DestroyIcon(
    HICON hIcon);

__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectory(
    PBYTE presbits,
    BOOL fIcon);


__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectoryEx(
    PBYTE presbits,
    BOOL  fIcon,
    int   cxDesired,
    int   cyDesired,
    UINT  Flags);
#line 7261 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HICON
__stdcall
CreateIconFromResource(
    PBYTE presbits,
    DWORD dwResSize,
    BOOL fIcon,
    DWORD dwVer);


__declspec(dllimport)
HICON
__stdcall
CreateIconFromResourceEx(
    PBYTE presbits,
    DWORD dwResSize,
    BOOL  fIcon,
    DWORD dwVer,
    int   cxDesired,
    int   cyDesired,
    UINT  Flags);


typedef struct tagCURSORSHAPE
{
    int     xHotSpot;
    int     yHotSpot;
    int     cx;
    int     cy;
    int     cbWidth;
    BYTE    Planes;
    BYTE    BitsPixel;
} CURSORSHAPE,  *LPCURSORSHAPE;
#line 7296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















__declspec(dllimport)
HANDLE
__stdcall
LoadImageA(
    HINSTANCE,
    LPCSTR,
    UINT,
    int,
    int,
    UINT);
__declspec(dllimport)
HANDLE
__stdcall
LoadImageW(
    HINSTANCE,
    LPCWSTR,
    UINT,
    int,
    int,
    UINT);




#line 7342 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HANDLE
__stdcall
CopyImage(
    HANDLE,
    UINT,
    int,
    int,
    UINT);







__declspec(dllimport) BOOL __stdcall DrawIconEx(HDC hdc, int xLeft, int yTop,
              HICON hIcon, int cxWidth, int cyWidth,
              UINT istepIfAniCur, HBRUSH hbrFlickerFreeDraw, UINT diFlags);
#line 7363 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
HICON
__stdcall
CreateIconIndirect(
    PICONINFO piconinfo);

__declspec(dllimport)
HICON
__stdcall
CopyIcon(
    HICON hIcon);

__declspec(dllimport)
BOOL
__stdcall
GetIconInfo(
    HICON hIcon,
    PICONINFO piconinfo);




#line 7387 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"














































































































#line 7498 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 7499 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





#line 7505 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 7509 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
LoadStringA(
    HINSTANCE hInstance,
    UINT uID,
    LPSTR lpBuffer,
    int nBufferMax);
__declspec(dllimport)
int
__stdcall
LoadStringW(
    HINSTANCE hInstance,
    UINT uID,
    LPWSTR lpBuffer,
    int nBufferMax);




#line 7531 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
















#line 7548 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"































#line 7580 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 7584 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


















#line 7603 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









#line 7613 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"














































#line 7660 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 7665 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 7669 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








































#line 7710 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
















#line 7727 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



















#line 7747 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

























#line 7773 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"











#line 7785 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
















#line 7802 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 7804 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



















__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageA(
    HWND hDlg,
    LPMSG lpMsg);
__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageW(
    HWND hDlg,
    LPMSG lpMsg);




#line 7840 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 7842 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
MapDialogRect(
    HWND hDlg,
    LPRECT lpRect);

__declspec(dllimport)
int
__stdcall
DlgDirListA(
    HWND hDlg,
    LPSTR lpPathSpec,
    int nIDListBox,
    int nIDStaticPath,
    UINT uFileType);
__declspec(dllimport)
int
__stdcall
DlgDirListW(
    HWND hDlg,
    LPWSTR lpPathSpec,
    int nIDListBox,
    int nIDStaticPath,
    UINT uFileType);




#line 7873 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExA(
    HWND hDlg,
    LPSTR lpString,
    int nCount,
    int nIDListBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExW(
    HWND hDlg,
    LPWSTR lpString,
    int nCount,
    int nIDListBox);




#line 7909 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxA(
    HWND hDlg,
    LPSTR lpPathSpec,
    int nIDComboBox,
    int nIDStaticPath,
    UINT uFiletype);
__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxW(
    HWND hDlg,
    LPWSTR lpPathSpec,
    int nIDComboBox,
    int nIDStaticPath,
    UINT uFiletype);




#line 7933 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExA(
    HWND hDlg,
    LPSTR lpString,
    int nCount,
    int nIDComboBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExW(
    HWND hDlg,
    LPWSTR lpString,
    int nCount,
    int nIDComboBox);




#line 7955 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

























#line 7981 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 7990 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


































                                  




























































#line 8086 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 8091 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 8093 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
























#line 8118 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 8123 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"













































#line 8169 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


#line 8172 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"









































#line 8214 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




#line 8219 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8220 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





















#line 8242 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



#line 8246 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






















typedef struct tagSCROLLINFO
{
    UINT    cbSize;
    UINT    fMask;
    int     nMin;
    int     nMax;
    UINT    nPage;
    int     nPos;
    int     nTrackPos;
}   SCROLLINFO,  *LPSCROLLINFO;
typedef SCROLLINFO const  *LPCSCROLLINFO;

__declspec(dllimport) int     __stdcall SetScrollInfo(HWND, int, LPCSCROLLINFO, BOOL);
__declspec(dllimport) BOOL    __stdcall GetScrollInfo(HWND, int, LPSCROLLINFO);
#line 8283 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8284 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8285 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















typedef struct tagMDICREATESTRUCTA {
    LPCSTR   szClass;
    LPCSTR   szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTA, *LPMDICREATESTRUCTA;
typedef struct tagMDICREATESTRUCTW {
    LPCWSTR  szClass;
    LPCWSTR  szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTW, *LPMDICREATESTRUCTW;

typedef MDICREATESTRUCTW MDICREATESTRUCT;
typedef LPMDICREATESTRUCTW LPMDICREATESTRUCT;



#line 8329 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagCLIENTCREATESTRUCT {
    HANDLE hWindowMenu;
    UINT idFirstChild;
} CLIENTCREATESTRUCT, *LPCLIENTCREATESTRUCT;

__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcA(
    HWND hWnd,
    HWND hWndMDIClient ,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcW(
    HWND hWnd,
    HWND hWndMDIClient ,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);




#line 8358 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)

LRESULT
__stdcall



#line 8367 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefMDIChildProcA(
    HWND hWnd,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall



#line 8380 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
DefMDIChildProcW(
    HWND hWnd,
    UINT uMsg,
    WPARAM wParam,
    LPARAM lParam);




#line 8390 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"



__declspec(dllimport)
BOOL
__stdcall
TranslateMDISysAccel(
    HWND hWndClient,
    LPMSG lpMsg);

#line 8401 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
UINT
__stdcall
ArrangeIconicWindows(
    HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowA(
    LPSTR lpClassName,
    LPSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent,
    HINSTANCE hInstance,
    LPARAM lParam
    );
__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowW(
    LPWSTR lpClassName,
    LPWSTR lpWindowName,
    DWORD dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    HWND hWndParent,
    HINSTANCE hInstance,
    LPARAM lParam
    );




#line 8443 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport) WORD    __stdcall TileWindows(HWND hwndParent, UINT wHow, const RECT * lpRect, UINT cKids, const HWND  * lpKids);
__declspec(dllimport) WORD    __stdcall CascadeWindows(HWND hwndParent, UINT wHow, const RECT * lpRect, UINT cKids,  const HWND  * lpKids);
#line 8448 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8449 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 8451 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"





typedef DWORD HELPPOLY;
typedef struct tagMULTIKEYHELPA {

    DWORD  mkSize;


#line 8463 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
    CHAR   mkKeylist;
    CHAR   szKeyphrase[1];
} MULTIKEYHELPA, *PMULTIKEYHELPA, *LPMULTIKEYHELPA;
typedef struct tagMULTIKEYHELPW {

    DWORD  mkSize;


#line 8472 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
    WCHAR  mkKeylist;
    WCHAR  szKeyphrase[1];
} MULTIKEYHELPW, *PMULTIKEYHELPW, *LPMULTIKEYHELPW;

typedef MULTIKEYHELPW MULTIKEYHELP;
typedef PMULTIKEYHELPW PMULTIKEYHELP;
typedef LPMULTIKEYHELPW LPMULTIKEYHELP;




#line 8484 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagHELPWININFOA {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    CHAR   rgchMember[2];
} HELPWININFOA, *PHELPWININFOA, *LPHELPWININFOA;
typedef struct tagHELPWININFOW {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    WCHAR  rgchMember[2];
} HELPWININFOW, *PHELPWININFOW, *LPHELPWININFOW;

typedef HELPWININFOW HELPWININFO;
typedef PHELPWININFOW PHELPWININFO;
typedef LPHELPWININFOW LPHELPWININFO;




#line 8512 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






































#line 8551 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
WinHelpA(
    HWND hWndMain,
    LPCSTR lpszHelp,
    UINT uCommand,
    DWORD dwData
    );
__declspec(dllimport)
BOOL
__stdcall
WinHelpW(
    HWND hWndMain,
    LPCWSTR lpszHelp,
    UINT uCommand,
    DWORD dwData
    );




#line 8578 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 8580 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






#line 8587 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




















































































#line 8672 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















#line 8688 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















#line 8704 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"






#line 8711 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
























#line 8736 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"












typedef struct tagNONCLIENTMETRICSA
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTA lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTA lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTA lfMenuFont;
    LOGFONTA lfStatusFont;
    LOGFONTA lfMessageFont;
}   NONCLIENTMETRICSA, *PNONCLIENTMETRICSA, * LPNONCLIENTMETRICSA;
typedef struct tagNONCLIENTMETRICSW
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTW lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTW lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTW lfMenuFont;
    LOGFONTW lfStatusFont;
    LOGFONTW lfMessageFont;
}   NONCLIENTMETRICSW, *PNONCLIENTMETRICSW, * LPNONCLIENTMETRICSW;

typedef NONCLIENTMETRICSW NONCLIENTMETRICS;
typedef PNONCLIENTMETRICSW PNONCLIENTMETRICS;
typedef LPNONCLIENTMETRICSW LPNONCLIENTMETRICS;




#line 8793 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8794 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8795 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"















typedef struct tagMINIMIZEDMETRICS
{
    UINT    cbSize;
    int     iWidth;
    int     iHorzGap;
    int     iVertGap;
    int     iArrange;
}   MINIMIZEDMETRICS, *PMINIMIZEDMETRICS, *LPMINIMIZEDMETRICS;



typedef struct tagICONMETRICSA
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTA lfFont;
}   ICONMETRICSA, *PICONMETRICSA, *LPICONMETRICSA;
typedef struct tagICONMETRICSW
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTW lfFont;
}   ICONMETRICSW, *PICONMETRICSW, *LPICONMETRICSW;

typedef ICONMETRICSW ICONMETRICS;
typedef PICONMETRICSW PICONMETRICS;
typedef LPICONMETRICSW LPICONMETRICS;




#line 8846 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8847 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 8848 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagANIMATIONINFO
{
    UINT    cbSize;
    int     iMinAnimate;
}   ANIMATIONINFO, *LPANIMATIONINFO;

typedef struct tagSERIALKEYSA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR     lpszActivePort;
    LPSTR     lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSA, *LPSERIALKEYSA;
typedef struct tagSERIALKEYSW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR    lpszActivePort;
    LPWSTR    lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSW, *LPSERIALKEYSW;

typedef SERIALKEYSW SERIALKEYS;
typedef LPSERIALKEYSW LPSERIALKEYS;



#line 8882 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







typedef struct tagHIGHCONTRASTA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR   lpszDefaultScheme;
}   HIGHCONTRASTA, *LPHIGHCONTRASTA;
typedef struct tagHIGHCONTRASTW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR  lpszDefaultScheme;
}   HIGHCONTRASTW, *LPHIGHCONTRASTW;

typedef HIGHCONTRASTW HIGHCONTRAST;
typedef LPHIGHCONTRASTW LPHIGHCONTRAST;



#line 8908 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
































__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsA(
    LPDEVMODEA  lpDevMode,
    DWORD       dwFlags);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsW(
    LPDEVMODEW  lpDevMode,
    DWORD       dwFlags);




#line 8957 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExA(
    LPCSTR    lpszDeviceName,
    LPDEVMODEA  lpDevMode,
    HWND        hwnd,
    DWORD       dwflags,
    LPVOID      lParam);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExW(
    LPCWSTR    lpszDeviceName,
    LPDEVMODEW  lpDevMode,
    HWND        hwnd,
    DWORD       dwflags,
    LPVOID      lParam);




#line 8981 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsA(
    LPCSTR lpszDeviceName,
    DWORD iModeNum,
    LPDEVMODEA lpDevMode);
__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsW(
    LPCWSTR lpszDeviceName,
    DWORD iModeNum,
    LPDEVMODEW lpDevMode);




#line 9004 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
























#line 9029 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 9031 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 9032 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoA(
    UINT uiAction,
    UINT uiParam,
    PVOID pvParam,
    UINT fWinIni);
__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoW(
    UINT uiAction,
    UINT uiParam,
    PVOID pvParam,
    UINT fWinIni);




#line 9055 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 9057 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"




typedef struct tagFILTERKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iWaitMSec;            
    DWORD iDelayMSec;           
    DWORD iRepeatMSec;          
    DWORD iBounceMSec;          
} FILTERKEYS, *LPFILTERKEYS;












typedef struct tagSTICKYKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
} STICKYKEYS, *LPSTICKYKEYS;






























#line 9118 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagMOUSEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iMaxSpeed;
    DWORD iTimeToMaxSpeed;
    DWORD iCtrlSpeed;
    DWORD dwReserved1;
    DWORD dwReserved2;
} MOUSEKEYS, *LPMOUSEKEYS;


















#line 9148 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

typedef struct tagACCESSTIMEOUT
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iTimeOutMSec;
} ACCESSTIMEOUT, *LPACCESSTIMEOUT;
























typedef struct tagSOUNDSENTRYA
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPSTR   lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYA, *LPSOUNDSENTRYA;
typedef struct tagSOUNDSENTRYW
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPWSTR  lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYW, *LPSOUNDSENTRYW;

typedef SOUNDSENTRYW SOUNDSENTRY;
typedef LPSOUNDSENTRYW LPSOUNDSENTRY;



#line 9216 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








typedef struct tagTOGGLEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
} TOGGLEKEYS, *LPTOGGLEKEYS;















__declspec(dllimport)
void
__stdcall
SetDebugErrorLevel(
    DWORD dwLevel
    );









__declspec(dllimport)
void
__stdcall
SetLastErrorEx(
    DWORD dwErrCode,
    DWORD dwType
    );






























































































































































































































































































































































































































































































































































































































































































































































































































































































#line 10129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"








#line 10138 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"







#line 10146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"


}
#line 10150 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"

#line 10152 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winuser.h"
#line 167 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"





#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"





















extern "C" {
#line 24 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"






































#line 63 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"



















































































#line 147 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"































































































































































































































#line 371 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"























































































































#line 491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"









#line 501 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"





















#line 523 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"























































#line 579 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"





































typedef DWORD LCTYPE;





typedef DWORD CALTYPE;





typedef DWORD CALID;






typedef struct _cpinfo {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
} CPINFO, *LPCPINFO;

typedef struct _cpinfoexA {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    CHAR    CodePageName[260];         
} CPINFOEXA, *LPCPINFOEXA;
typedef struct _cpinfoexW {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    WCHAR   CodePageName[260];         
} CPINFOEXW, *LPCPINFOEXW;

typedef CPINFOEXW CPINFOEX;
typedef LPCPINFOEXW LPCPINFOEX;



#line 664 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"






typedef struct _numberfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTA, *LPNUMBERFMTA;
typedef struct _numberfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTW, *LPNUMBERFMTW;

typedef NUMBERFMTW NUMBERFMT;
typedef LPNUMBERFMTW LPNUMBERFMT;



#line 693 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"






typedef struct _currencyfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPSTR   lpCurrencySymbol;          
} CURRENCYFMTA, *LPCURRENCYFMTA;
typedef struct _currencyfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPWSTR  lpCurrencySymbol;          
} CURRENCYFMTW, *LPCURRENCYFMTW;

typedef CURRENCYFMTW CURRENCYFMT;
typedef LPCURRENCYFMTW LPCURRENCYFMT;



#line 726 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"








typedef BOOL (__stdcall* LOCALE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXA)(LPSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXA)(LPSTR, CALID);

typedef BOOL (__stdcall* LOCALE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXW)(LPWSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXW)(LPWSTR, CALID);



















#line 769 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"





















#line 791 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"



























__declspec(dllimport)
BOOL
__stdcall
IsValidCodePage(
    UINT  CodePage);

__declspec(dllimport)
UINT
__stdcall
GetACP(void);

__declspec(dllimport)
UINT
__stdcall
GetOEMCP(void);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfo(
    UINT      CodePage,
    LPCPINFO  lpCPInfo);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExA(
    UINT         CodePage,
    DWORD        dwFlags,
    LPCPINFOEXA  lpCPInfoEx);
__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExW(
    UINT         CodePage,
    DWORD        dwFlags,
    LPCPINFOEXW  lpCPInfoEx);




#line 860 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByte(
    BYTE  TestChar);

__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByteEx(
    UINT  CodePage,
    BYTE  TestChar);

__declspec(dllimport)
int
__stdcall
MultiByteToWideChar(
    UINT     CodePage,
    DWORD    dwFlags,
    LPCSTR   lpMultiByteStr,
    int      cchMultiByte,
    LPWSTR   lpWideCharStr,
    int      cchWideChar);

__declspec(dllimport)
int
__stdcall
WideCharToMultiByte(
    UINT     CodePage,
    DWORD    dwFlags,
    LPCWSTR  lpWideCharStr,
    int      cchWideChar,
    LPSTR    lpMultiByteStr,
    int      cchMultiByte,
    LPCSTR   lpDefaultChar,
    LPBOOL   lpUsedDefaultChar);






__declspec(dllimport)
int
__stdcall
CompareStringA(
    LCID     Locale,
    DWORD    dwCmpFlags,
    LPCSTR lpString1,
    int      cchCount1,
    LPCSTR lpString2,
    int      cchCount2);
__declspec(dllimport)
int
__stdcall
CompareStringW(
    LCID     Locale,
    DWORD    dwCmpFlags,
    LPCWSTR lpString1,
    int      cchCount1,
    LPCWSTR lpString2,
    int      cchCount2);




#line 928 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
LCMapStringA(
    LCID     Locale,
    DWORD    dwMapFlags,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPSTR  lpDestStr,
    int      cchDest);
__declspec(dllimport)
int
__stdcall
LCMapStringW(
    LCID     Locale,
    DWORD    dwMapFlags,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWSTR  lpDestStr,
    int      cchDest);




#line 954 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetLocaleInfoA(
    LCID     Locale,
    LCTYPE   LCType,
    LPSTR  lpLCData,
    int      cchData);
__declspec(dllimport)
int
__stdcall
GetLocaleInfoW(
    LCID     Locale,
    LCTYPE   LCType,
    LPWSTR  lpLCData,
    int      cchData);




#line 976 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoA(
    LCID     Locale,
    LCTYPE   LCType,
    LPCSTR lpLCData);
__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoW(
    LCID     Locale,
    LCTYPE   LCType,
    LPCWSTR lpLCData);




#line 996 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetTimeFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpTime,
    LPCSTR lpFormat,
    LPSTR  lpTimeStr,
    int      cchTime);
__declspec(dllimport)
int
__stdcall
GetTimeFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpTime,
    LPCWSTR lpFormat,
    LPWSTR  lpTimeStr,
    int      cchTime);




#line 1022 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetDateFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpDate,
    LPCSTR lpFormat,
    LPSTR  lpDateStr,
    int      cchDate);
__declspec(dllimport)
int
__stdcall
GetDateFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    const SYSTEMTIME *lpDate,
    LPCWSTR lpFormat,
    LPWSTR  lpDateStr,
    int      cchDate);




#line 1048 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetNumberFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    LPCSTR lpValue,
    const NUMBERFMTA *lpFormat,
    LPSTR  lpNumberStr,
    int      cchNumber);
__declspec(dllimport)
int
__stdcall
GetNumberFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    LPCWSTR lpValue,
    const NUMBERFMTW *lpFormat,
    LPWSTR  lpNumberStr,
    int      cchNumber);




#line 1074 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
int
__stdcall
GetCurrencyFormatA(
    LCID     Locale,
    DWORD    dwFlags,
    LPCSTR lpValue,
    const CURRENCYFMTA *lpFormat,
    LPSTR  lpCurrencyStr,
    int      cchCurrency);
__declspec(dllimport)
int
__stdcall
GetCurrencyFormatW(
    LCID     Locale,
    DWORD    dwFlags,
    LPCWSTR lpValue,
    const CURRENCYFMTW *lpFormat,
    LPWSTR  lpCurrencyStr,
    int      cchCurrency);




#line 1100 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoA(
    CALINFO_ENUMPROCA lpCalInfoEnumProc,
    LCID              Locale,
    CALID             Calendar,
    CALTYPE           CalType);
__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoW(
    CALINFO_ENUMPROCW lpCalInfoEnumProc,
    LCID              Locale,
    CALID             Calendar,
    CALTYPE           CalType);




#line 1122 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"























#line 1146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsA(
    TIMEFMT_ENUMPROCA lpTimeFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsW(
    TIMEFMT_ENUMPROCW lpTimeFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);




#line 1166 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsA(
    DATEFMT_ENUMPROCA lpDateFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsW(
    DATEFMT_ENUMPROCW lpDateFmtEnumProc,
    LCID              Locale,
    DWORD             dwFlags);




#line 1186 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"





















#line 1208 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
IsValidLocale(
    LCID   Locale,
    DWORD  dwFlags);

__declspec(dllimport)
LCID
__stdcall
ConvertDefaultLocale(
    LCID   Locale);

__declspec(dllimport)
LCID
__stdcall
GetThreadLocale(void);

__declspec(dllimport)
BOOL
__stdcall
SetThreadLocale(
    LCID  Locale
    );

__declspec(dllimport)
LANGID
__stdcall
GetSystemDefaultLangID(void);

__declspec(dllimport)
LANGID
__stdcall
GetUserDefaultLangID(void);

__declspec(dllimport)
LCID
__stdcall
GetSystemDefaultLCID(void);

__declspec(dllimport)
LCID
__stdcall
GetUserDefaultLCID(void);






__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExA(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);
__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExW(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);




#line 1282 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"












__declspec(dllimport)
BOOL
__stdcall
GetStringTypeA(
    LCID     Locale,
    DWORD    dwInfoType,
    LPCSTR   lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);

__declspec(dllimport)
BOOL
__stdcall
GetStringTypeW(
    DWORD    dwInfoType,
    LPCWSTR  lpSrcStr,
    int      cchSrc,
    LPWORD   lpCharType);


__declspec(dllimport)
int
__stdcall
FoldStringA(
    DWORD    dwMapFlags,
    LPCSTR lpSrcStr,
    int      cchSrc,
    LPSTR  lpDestStr,
    int      cchDest);
__declspec(dllimport)
int
__stdcall
FoldStringW(
    DWORD    dwMapFlags,
    LPCWSTR lpSrcStr,
    int      cchSrc,
    LPWSTR  lpDestStr,
    int      cchDest);




#line 1337 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesA(
    LOCALE_ENUMPROCA lpLocaleEnumProc,
    DWORD            dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesW(
    LOCALE_ENUMPROCW lpLocaleEnumProc,
    DWORD            dwFlags);




#line 1355 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesA(
    CODEPAGE_ENUMPROCA lpCodePageEnumProc,
    DWORD              dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesW(
    CODEPAGE_ENUMPROCW lpCodePageEnumProc,
    DWORD              dwFlags);




#line 1373 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"


#line 1376 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"



}
#line 1381 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"

#line 1383 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnls.h"
#line 173 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 174 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

























extern "C" {
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

typedef struct _COORD {
    SHORT X;
    SHORT Y;
} COORD, *PCOORD;

typedef struct _SMALL_RECT {
    SHORT Left;
    SHORT Top;
    SHORT Right;
    SHORT Bottom;
} SMALL_RECT, *PSMALL_RECT;

typedef struct _KEY_EVENT_RECORD {
    BOOL bKeyDown;
    WORD wRepeatCount;
    WORD wVirtualKeyCode;
    WORD wVirtualScanCode;
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } uChar;
    DWORD dwControlKeyState;
} KEY_EVENT_RECORD, *PKEY_EVENT_RECORD;






















typedef struct _MOUSE_EVENT_RECORD {
    COORD dwMousePosition;
    DWORD dwButtonState;
    DWORD dwControlKeyState;
    DWORD dwEventFlags;
} MOUSE_EVENT_RECORD, *PMOUSE_EVENT_RECORD;



















typedef struct _WINDOW_BUFFER_SIZE_RECORD {
    COORD dwSize;
} WINDOW_BUFFER_SIZE_RECORD, *PWINDOW_BUFFER_SIZE_RECORD;

typedef struct _MENU_EVENT_RECORD {
    UINT dwCommandId;
} MENU_EVENT_RECORD, *PMENU_EVENT_RECORD;

typedef struct _FOCUS_EVENT_RECORD {
    BOOL bSetFocus;
} FOCUS_EVENT_RECORD, *PFOCUS_EVENT_RECORD;

typedef struct _INPUT_RECORD {
    WORD EventType;
    union {
        KEY_EVENT_RECORD KeyEvent;
        MOUSE_EVENT_RECORD MouseEvent;
        WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
        MENU_EVENT_RECORD MenuEvent;
        FOCUS_EVENT_RECORD FocusEvent;
    } Event;
} INPUT_RECORD, *PINPUT_RECORD;











typedef struct _CHAR_INFO {
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } Char;
    WORD Attributes;
} CHAR_INFO, *PCHAR_INFO;
























typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD  wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
} CONSOLE_SCREEN_BUFFER_INFO, *PCONSOLE_SCREEN_BUFFER_INFO;

typedef struct _CONSOLE_CURSOR_INFO {
    DWORD  dwSize;
    BOOL   bVisible;
} CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;





typedef
BOOL
(__stdcall *PHANDLER_ROUTINE)(
    DWORD CtrlType
    );






























__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputA(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputW(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );




#line 238 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputA(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputW(
    HANDLE hConsoleInput,
    PINPUT_RECORD lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsRead
    );




#line 262 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputA(
    HANDLE hConsoleInput,
    const INPUT_RECORD *lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputW(
    HANDLE hConsoleInput,
    const INPUT_RECORD *lpBuffer,
    DWORD nLength,
    LPDWORD lpNumberOfEventsWritten
    );




#line 286 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputA(
    HANDLE hConsoleOutput,
    PCHAR_INFO lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpReadRegion
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputW(
    HANDLE hConsoleOutput,
    PCHAR_INFO lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpReadRegion
    );




#line 312 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputA(
    HANDLE hConsoleOutput,
    const CHAR_INFO *lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpWriteRegion
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputW(
    HANDLE hConsoleOutput,
    const CHAR_INFO *lpBuffer,
    COORD dwBufferSize,
    COORD dwBufferCoord,
    PSMALL_RECT lpWriteRegion
    );




#line 338 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    LPSTR lpCharacter,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfCharsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    LPWSTR lpCharacter,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfCharsRead
    );




#line 364 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    LPWORD lpAttribute,
    DWORD nLength,
    COORD dwReadCoord,
    LPDWORD lpNumberOfAttrsRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    LPCSTR lpCharacter,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    LPCWSTR lpCharacter,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );




#line 401 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    const WORD *lpAttribute,
    DWORD nLength,
    COORD dwWriteCoord,
    LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterA(
    HANDLE hConsoleOutput,
    CHAR  cCharacter,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterW(
    HANDLE hConsoleOutput,
    WCHAR  cCharacter,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfCharsWritten
    );




#line 438 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputAttribute(
    HANDLE hConsoleOutput,
    WORD   wAttribute,
    DWORD  nLength,
    COORD  dwWriteCoord,
    LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleMode(
    HANDLE hConsoleHandle,
    LPDWORD lpMode
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleInputEvents(
    HANDLE hConsoleInput,
    LPDWORD lpNumberOfEvents
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleScreenBufferInfo(
    HANDLE hConsoleOutput,
    PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
    );

__declspec(dllimport)
COORD
__stdcall
GetLargestConsoleWindowSize(
    HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleCursorInfo(
    HANDLE hConsoleOutput,
    PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleMouseButtons(
    LPDWORD lpNumberOfMouseButtons
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleMode(
    HANDLE hConsoleHandle,
    DWORD dwMode
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleActiveScreenBuffer(
    HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
FlushConsoleInputBuffer(
    HANDLE hConsoleInput
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleScreenBufferSize(
    HANDLE hConsoleOutput,
    COORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorPosition(
    HANDLE hConsoleOutput,
    COORD dwCursorPosition
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorInfo(
    HANDLE hConsoleOutput,
    const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
    );

__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferA(
    HANDLE hConsoleOutput,
    const SMALL_RECT *lpScrollRectangle,
    const SMALL_RECT *lpClipRectangle,
    COORD dwDestinationOrigin,
    const CHAR_INFO *lpFill
    );
__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferW(
    HANDLE hConsoleOutput,
    const SMALL_RECT *lpScrollRectangle,
    const SMALL_RECT *lpClipRectangle,
    COORD dwDestinationOrigin,
    const CHAR_INFO *lpFill
    );




#line 567 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
SetConsoleWindowInfo(
    HANDLE hConsoleOutput,
    BOOL bAbsolute,
    const SMALL_RECT *lpConsoleWindow
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleTextAttribute(
    HANDLE hConsoleOutput,
    WORD wAttributes
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCtrlHandler(
    PHANDLER_ROUTINE HandlerRoutine,
    BOOL Add
    );

__declspec(dllimport)
BOOL
__stdcall
GenerateConsoleCtrlEvent(
    DWORD dwCtrlEvent,
    DWORD dwProcessGroupId
    );

__declspec(dllimport)
BOOL
__stdcall
AllocConsole( void );

__declspec(dllimport)
BOOL
__stdcall
FreeConsole( void );


__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleA(
    LPSTR lpConsoleTitle,
    DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleW(
    LPWSTR lpConsoleTitle,
    DWORD nSize
    );




#line 631 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleA(
    LPCSTR lpConsoleTitle
    );
__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleW(
    LPCWSTR lpConsoleTitle
    );




#line 649 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
ReadConsoleA(
    HANDLE hConsoleInput,
    LPVOID lpBuffer,
    DWORD nNumberOfCharsToRead,
    LPDWORD lpNumberOfCharsRead,
    LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleW(
    HANDLE hConsoleInput,
    LPVOID lpBuffer,
    DWORD nNumberOfCharsToRead,
    LPDWORD lpNumberOfCharsRead,
    LPVOID lpReserved
    );




#line 675 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleA(
    HANDLE hConsoleOutput,
    const void *lpBuffer,
    DWORD nNumberOfCharsToWrite,
    LPDWORD lpNumberOfCharsWritten,
    LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleW(
    HANDLE hConsoleOutput,
    const void *lpBuffer,
    DWORD nNumberOfCharsToWrite,
    LPDWORD lpNumberOfCharsWritten,
    LPVOID lpReserved
    );




#line 701 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"



__declspec(dllimport)
HANDLE
__stdcall
CreateConsoleScreenBuffer(
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    const SECURITY_ATTRIBUTES *lpSecurityAttributes,
    DWORD dwFlags,
    LPVOID lpScreenBufferData
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCP(
    UINT wCodePageID
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleOutputCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleOutputCP(
    UINT wCodePageID
    );


}
#line 742 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

#line 744 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincon.h"

#line 176 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"
















extern "C" {
#line 19 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"











#line 31 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

































































































typedef struct tagVS_FIXEDFILEINFO
{
    DWORD   dwSignature;            
    DWORD   dwStrucVersion;         
    DWORD   dwFileVersionMS;        
    DWORD   dwFileVersionLS;        
    DWORD   dwProductVersionMS;     
    DWORD   dwProductVersionLS;     
    DWORD   dwFileFlagsMask;        
    DWORD   dwFileFlags;            
    DWORD   dwFileOS;               
    DWORD   dwFileType;             
    DWORD   dwFileSubtype;          
    DWORD   dwFileDateMS;           
    DWORD   dwFileDateLS;           
} VS_FIXEDFILEINFO;



DWORD
__stdcall
VerFindFileA(
        DWORD uFlags,
        LPSTR szFileName,
        LPSTR szWinDir,
        LPSTR szAppDir,
        LPSTR szCurDir,
        PUINT lpuCurDirLen,
        LPSTR szDestDir,
        PUINT lpuDestDirLen
        );
DWORD
__stdcall
VerFindFileW(
        DWORD uFlags,
        LPWSTR szFileName,
        LPWSTR szWinDir,
        LPWSTR szAppDir,
        LPWSTR szCurDir,
        PUINT lpuCurDirLen,
        LPWSTR szDestDir,
        PUINT lpuDestDirLen
        );




#line 176 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

DWORD
__stdcall
VerInstallFileA(
        DWORD uFlags,
        LPSTR szSrcFileName,
        LPSTR szDestFileName,
        LPSTR szSrcDir,
        LPSTR szDestDir,
        LPSTR szCurDir,
        LPSTR szTmpFile,
        PUINT lpuTmpFileLen
        );
DWORD
__stdcall
VerInstallFileW(
        DWORD uFlags,
        LPWSTR szSrcFileName,
        LPWSTR szDestFileName,
        LPWSTR szSrcDir,
        LPWSTR szDestDir,
        LPWSTR szCurDir,
        LPWSTR szTmpFile,
        PUINT lpuTmpFileLen
        );




#line 206 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"


DWORD
__stdcall
GetFileVersionInfoSizeA(
        LPSTR lptstrFilename, 
        LPDWORD lpdwHandle
        );                      

DWORD
__stdcall
GetFileVersionInfoSizeW(
        LPWSTR lptstrFilename, 
        LPDWORD lpdwHandle
        );                      




#line 226 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"


BOOL
__stdcall
GetFileVersionInfoA(
        LPSTR lptstrFilename, 
        DWORD dwHandle,         
        DWORD dwLen,            
        LPVOID lpData
        );                      

BOOL
__stdcall
GetFileVersionInfoW(
        LPWSTR lptstrFilename, 
        DWORD dwHandle,         
        DWORD dwLen,            
        LPVOID lpData
        );                      




#line 250 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

DWORD
__stdcall
VerLanguageNameA(
        DWORD wLang,
        LPSTR szLang,
        DWORD nSize
        );
DWORD
__stdcall
VerLanguageNameW(
        DWORD wLang,
        LPWSTR szLang,
        DWORD nSize
        );




#line 270 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

BOOL
__stdcall
VerQueryValueA(
        const LPVOID pBlock,
        LPSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );
BOOL
__stdcall
VerQueryValueW(
        const LPVOID pBlock,
        LPWSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );




#line 292 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

#line 294 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"


}
#line 298 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"

#line 300 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winver.h"
#line 177 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 178 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"
























extern "C" {
#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"









typedef ACCESS_MASK REGSAM;





struct HKEY__ { int unused; }; typedef struct HKEY__ *HKEY;
typedef HKEY *PHKEY;
#line 45 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"



















struct val_context {
    int valuelen;       
    LPVOID value_context;   
    LPVOID val_buff_ptr;    
};

typedef struct val_context  *PVALCONTEXT;

typedef struct pvalueA {           
    LPSTR   pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEA,  *PPVALUEA;
typedef struct pvalueW {           
    LPWSTR  pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEW,  *PPVALUEW;

typedef PVALUEW PVALUE;
typedef PPVALUEW PPVALUE;



#line 91 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

typedef
DWORD _cdecl
QUERYHANDLER (LPVOID keycontext, PVALCONTEXT val_list, DWORD num_vals,
          LPVOID outputbuffer, DWORD  *total_outlen, DWORD input_blen);

typedef QUERYHANDLER  *PQUERYHANDLER;

typedef struct provider_info {
    PQUERYHANDLER pi_R0_1val;
    PQUERYHANDLER pi_R0_allvals;
    PQUERYHANDLER pi_R3_1val;
    PQUERYHANDLER pi_R3_allvals;
    DWORD pi_flags;    
    LPVOID pi_key_context;
}REG_PROVIDER;

typedef struct provider_info  *PPROVIDER;

typedef struct value_entA {
    LPSTR   ve_valuename;
    DWORD ve_valuelen;
    DWORD ve_valueptr;
    DWORD ve_type;
}VALENTA,  *PVALENTA;
typedef struct value_entW {
    LPWSTR  ve_valuename;
    DWORD ve_valuelen;
    DWORD ve_valueptr;
    DWORD ve_type;
}VALENTW,  *PVALENTW;

typedef VALENTW VALENT;
typedef PVALENTW PVALENT;



#line 129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

#line 131 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


#line 134 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"













__declspec(dllimport)
LONG
__stdcall
RegCloseKey (
    HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegOverridePredefKey (
    HKEY hKey,
    HKEY hNewHKey
    );

__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryA (
    LPCSTR lpMachineName,
    HKEY hKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryW (
    LPCWSTR lpMachineName,
    HKEY hKey,
    PHKEY phkResult
    );




#line 183 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegCreateKeyA (
    HKEY hKey,
    LPCSTR lpSubKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    PHKEY phkResult
    );




#line 205 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD Reserved,
    LPSTR lpClass,
    DWORD dwOptions,
    REGSAM samDesired,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    PHKEY phkResult,
    LPDWORD lpdwDisposition
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD Reserved,
    LPWSTR lpClass,
    DWORD dwOptions,
    REGSAM samDesired,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    PHKEY phkResult,
    LPDWORD lpdwDisposition
    );




#line 239 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyA (
    HKEY hKey,
    LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey
    );




#line 259 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegDeleteValueA (
    HKEY hKey,
    LPCSTR lpValueName
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteValueW (
    HKEY hKey,
    LPCWSTR lpValueName
    );




#line 279 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumKeyA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpName,
    DWORD cbName
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpName,
    DWORD cbName
    );




#line 303 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpName,
    LPDWORD lpcbName,
    LPDWORD lpReserved,
    LPSTR lpClass,
    LPDWORD lpcbClass,
    PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpName,
    LPDWORD lpcbName,
    LPDWORD lpReserved,
    LPWSTR lpClass,
    LPDWORD lpcbClass,
    PFILETIME lpftLastWriteTime
    );




#line 335 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegEnumValueA (
    HKEY hKey,
    DWORD dwIndex,
    LPSTR lpValueName,
    LPDWORD lpcbValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumValueW (
    HKEY hKey,
    DWORD dwIndex,
    LPWSTR lpValueName,
    LPDWORD lpcbValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );




#line 367 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegFlushKey (
    HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegGetKeySecurity (
    HKEY hKey,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor,
    LPDWORD lpcbSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegLoadKeyA (
    HKEY    hKey,
    LPCSTR  lpSubKey,
    LPCSTR  lpFile
    );
__declspec(dllimport)
LONG
__stdcall
RegLoadKeyW (
    HKEY    hKey,
    LPCWSTR  lpSubKey,
    LPCWSTR  lpFile
    );




#line 406 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegNotifyChangeKeyValue (
    HKEY hKey,
    BOOL bWatchSubtree,
    DWORD dwNotifyFilter,
    HANDLE hEvent,
    BOOL fAsynchronus
    );

__declspec(dllimport)
LONG
__stdcall
RegOpenKeyA (
    HKEY hKey,
    LPCSTR lpSubKey,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    PHKEY phkResult
    );




#line 439 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD ulOptions,
    REGSAM samDesired,
    PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD ulOptions,
    REGSAM samDesired,
    PHKEY phkResult
    );




#line 465 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyA (
    HKEY hKey,
    LPSTR lpClass,
    LPDWORD lpcbClass,
    LPDWORD lpReserved,
    LPDWORD lpcSubKeys,
    LPDWORD lpcbMaxSubKeyLen,
    LPDWORD lpcbMaxClassLen,
    LPDWORD lpcValues,
    LPDWORD lpcbMaxValueNameLen,
    LPDWORD lpcbMaxValueLen,
    LPDWORD lpcbSecurityDescriptor,
    PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyW (
    HKEY hKey,
    LPWSTR lpClass,
    LPDWORD lpcbClass,
    LPDWORD lpReserved,
    LPDWORD lpcSubKeys,
    LPDWORD lpcbMaxSubKeyLen,
    LPDWORD lpcbMaxClassLen,
    LPDWORD lpcValues,
    LPDWORD lpcbMaxValueNameLen,
    LPDWORD lpcbMaxValueLen,
    LPDWORD lpcbSecurityDescriptor,
    PFILETIME lpftLastWriteTime
    );




#line 505 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryValueA (
    HKEY hKey,
    LPCSTR lpSubKey,
    LPSTR lpValue,
    PLONG   lpcbValue
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    LPWSTR lpValue,
    PLONG   lpcbValue
    );




#line 529 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesA (
    HKEY hKey,
    PVALENTA val_list,
    DWORD num_vals,
    LPSTR lpValueBuf,
    LPDWORD ldwTotsize
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesW (
    HKEY hKey,
    PVALENTW val_list,
    DWORD num_vals,
    LPWSTR lpValueBuf,
    LPDWORD ldwTotsize
    );




#line 556 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"
#line 557 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegQueryValueExA (
    HKEY hKey,
    LPCSTR lpValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueExW (
    HKEY hKey,
    LPCWSTR lpValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE lpData,
    LPDWORD lpcbData
    );




#line 585 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyA (
    HKEY     hKey,
    LPCSTR  lpSubKey,
    LPCSTR  lpNewFile,
    LPCSTR  lpOldFile
    );
__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyW (
    HKEY     hKey,
    LPCWSTR  lpSubKey,
    LPCWSTR  lpNewFile,
    LPCWSTR  lpOldFile
    );




#line 609 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyA (
    HKEY hKey,
    LPCSTR lpFile,
    DWORD   dwFlags
    );
__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyW (
    HKEY hKey,
    LPCWSTR lpFile,
    DWORD   dwFlags
    );




#line 631 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegSaveKeyA (
    HKEY hKey,
    LPCSTR lpFile,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
LONG
__stdcall
RegSaveKeyW (
    HKEY hKey,
    LPCWSTR lpFile,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );




#line 653 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegSetKeySecurity (
    HKEY hKey,
    SECURITY_INFORMATION SecurityInformation,
    PSECURITY_DESCRIPTOR pSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegSetValueA (
    HKEY hKey,
    LPCSTR lpSubKey,
    DWORD dwType,
    LPCSTR lpData,
    DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueW (
    HKEY hKey,
    LPCWSTR lpSubKey,
    DWORD dwType,
    LPCWSTR lpData,
    DWORD cbData
    );




#line 688 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


__declspec(dllimport)
LONG
__stdcall
RegSetValueExA (
    HKEY hKey,
    LPCSTR lpValueName,
    DWORD Reserved,
    DWORD dwType,
    const BYTE* lpData,
    DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueExW (
    HKEY hKey,
    LPCWSTR lpValueName,
    DWORD Reserved,
    DWORD dwType,
    const BYTE* lpData,
    DWORD cbData
    );




#line 717 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyA (
    HKEY    hKey,
    LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyW (
    HKEY    hKey,
    LPCWSTR lpSubKey
    );




#line 737 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"





__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownA(
    LPSTR lpMachineName,
    LPSTR lpMessage,
    DWORD dwTimeout,
    BOOL bForceAppsClosed,
    BOOL bRebootAfterShutdown
    );
__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownW(
    LPWSTR lpMachineName,
    LPWSTR lpMessage,
    DWORD dwTimeout,
    BOOL bForceAppsClosed,
    BOOL bRebootAfterShutdown
    );




#line 767 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownA(
    LPSTR lpMachineName
    );
__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownW(
    LPWSTR lpMachineName
    );




#line 786 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


}
#line 790 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"


#line 793 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winreg.h"

#line 180 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 181 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"



























extern "C" {
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"
















































#line 79 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"






#line 86 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"









#line 96 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"













#line 110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"



#line 114 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

typedef struct  _NETRESOURCEA {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPSTR    lpLocalName;
    LPSTR    lpRemoteName;
    LPSTR    lpComment ;
    LPSTR    lpProvider;
}NETRESOURCEA, *LPNETRESOURCEA;
typedef struct  _NETRESOURCEW {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPWSTR   lpLocalName;
    LPWSTR   lpRemoteName;
    LPWSTR   lpComment ;
    LPWSTR   lpProvider;
}NETRESOURCEW, *LPNETRESOURCEW;

typedef NETRESOURCEW NETRESOURCE;
typedef LPNETRESOURCEW LPNETRESOURCE;



#line 142 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





















#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnectionA(
     LPCSTR   lpRemoteName,
     LPCSTR   lpPassword,
     LPCSTR   lpLocalName
    );
DWORD __stdcall
WNetAddConnectionW(
     LPCWSTR   lpRemoteName,
     LPCWSTR   lpPassword,
     LPCWSTR   lpLocalName
    );




#line 182 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnection2A(
     LPNETRESOURCEA lpNetResource,
     LPCSTR       lpPassword,
     LPCSTR       lpUserName,
     DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection2W(
     LPNETRESOURCEW lpNetResource,
     LPCWSTR       lpPassword,
     LPCWSTR       lpUserName,
     DWORD          dwFlags
    );




#line 202 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetAddConnection3A(
     HWND           hwndOwner,
     LPNETRESOURCEA lpNetResource,
     LPCSTR       lpPassword,
     LPCSTR       lpUserName,
     DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection3W(
     HWND           hwndOwner,
     LPNETRESOURCEW lpNetResource,
     LPCWSTR       lpPassword,
     LPCWSTR       lpUserName,
     DWORD          dwFlags
    );




#line 224 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetCancelConnectionA(
     LPCSTR lpName,
     BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnectionW(
     LPCWSTR lpName,
     BOOL     fForce
    );




#line 240 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetCancelConnection2A(
     LPCSTR lpName,
     DWORD    dwFlags,
     BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnection2W(
     LPCWSTR lpName,
     DWORD    dwFlags,
     BOOL     fForce
    );




#line 258 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetGetConnectionA(
     LPCSTR lpLocalName,
     LPSTR  lpRemoteName,
     LPDWORD  lpnLength
    );
DWORD __stdcall
WNetGetConnectionW(
     LPCWSTR lpLocalName,
     LPWSTR  lpRemoteName,
     LPDWORD  lpnLength
    );




#line 276 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"



DWORD __stdcall
WNetUseConnectionA(
    HWND            hwndOwner,
    LPNETRESOURCEA  lpNetResource,
    LPCSTR        lpUserID,
    LPCSTR        lpPassword,
    DWORD           dwFlags,
    LPSTR         lpAccessName,
    LPDWORD         lpBufferSize,
    LPDWORD         lpResult
    );
DWORD __stdcall
WNetUseConnectionW(
    HWND            hwndOwner,
    LPNETRESOURCEW  lpNetResource,
    LPCWSTR        lpUserID,
    LPCWSTR        lpPassword,
    DWORD           dwFlags,
    LPWSTR         lpAccessName,
    LPDWORD         lpBufferSize,
    LPDWORD         lpResult
    );




#line 306 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"
#line 307 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"






DWORD __stdcall
WNetConnectionDialog(
    HWND  hwnd,
    DWORD dwType
    );

DWORD __stdcall
WNetDisconnectDialog(
    HWND  hwnd,
    DWORD dwType
    );


typedef struct _CONNECTDLGSTRUCTA{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEA lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTA,  *LPCONNECTDLGSTRUCTA;
typedef struct _CONNECTDLGSTRUCTW{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEW lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTW,  *LPCONNECTDLGSTRUCTW;

typedef CONNECTDLGSTRUCTW CONNECTDLGSTRUCT;
typedef LPCONNECTDLGSTRUCTW LPCONNECTDLGSTRUCT;



#line 347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"














DWORD __stdcall
WNetConnectionDialog1A(
    LPCONNECTDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetConnectionDialog1W(
    LPCONNECTDLGSTRUCTW lpConnDlgStruct
    );




#line 374 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

typedef struct _DISCDLGSTRUCTA{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPSTR           lpLocalName;      
    LPSTR           lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTA,  *LPDISCDLGSTRUCTA;
typedef struct _DISCDLGSTRUCTW{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPWSTR          lpLocalName;      
    LPWSTR          lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTW,  *LPDISCDLGSTRUCTW;

typedef DISCDLGSTRUCTW DISCDLGSTRUCT;
typedef LPDISCDLGSTRUCTW LPDISCDLGSTRUCT;



#line 396 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"




DWORD __stdcall
WNetDisconnectDialog1A(
    LPDISCDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetDisconnectDialog1W(
    LPDISCDLGSTRUCTW lpConnDlgStruct
    );




#line 413 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"
#line 414 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





DWORD __stdcall
WNetOpenEnumA(
     DWORD          dwScope,
     DWORD          dwType,
     DWORD          dwUsage,
     LPNETRESOURCEA lpNetResource,
     LPHANDLE       lphEnum
    );
DWORD __stdcall
WNetOpenEnumW(
     DWORD          dwScope,
     DWORD          dwType,
     DWORD          dwUsage,
     LPNETRESOURCEW lpNetResource,
     LPHANDLE       lphEnum
    );




#line 440 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetEnumResourceA(
     HANDLE  hEnum,
     LPDWORD lpcCount,
     LPVOID  lpBuffer,
     LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetEnumResourceW(
     HANDLE  hEnum,
     LPDWORD lpcCount,
     LPVOID  lpBuffer,
     LPDWORD lpBufferSize
    );




#line 460 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetCloseEnum(
    HANDLE   hEnum
    );









typedef struct  _UNIVERSAL_NAME_INFOA {
    LPSTR    lpUniversalName;
}UNIVERSAL_NAME_INFOA, *LPUNIVERSAL_NAME_INFOA;
typedef struct  _UNIVERSAL_NAME_INFOW {
    LPWSTR   lpUniversalName;
}UNIVERSAL_NAME_INFOW, *LPUNIVERSAL_NAME_INFOW;

typedef UNIVERSAL_NAME_INFOW UNIVERSAL_NAME_INFO;
typedef LPUNIVERSAL_NAME_INFOW LPUNIVERSAL_NAME_INFO;



#line 487 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

typedef struct  _REMOTE_NAME_INFOA {
    LPSTR    lpUniversalName;
    LPSTR    lpConnectionName;
    LPSTR    lpRemainingPath;
}REMOTE_NAME_INFOA, *LPREMOTE_NAME_INFOA;
typedef struct  _REMOTE_NAME_INFOW {
    LPWSTR   lpUniversalName;
    LPWSTR   lpConnectionName;
    LPWSTR   lpRemainingPath;
}REMOTE_NAME_INFOW, *LPREMOTE_NAME_INFOW;

typedef REMOTE_NAME_INFOW REMOTE_NAME_INFO;
typedef LPREMOTE_NAME_INFOW LPREMOTE_NAME_INFO;



#line 505 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

DWORD __stdcall
WNetGetUniversalNameA(
     LPCSTR lpLocalPath,
     DWORD    dwInfoLevel,
     LPVOID   lpBuffer,
     LPDWORD  lpBufferSize
     );
DWORD __stdcall
WNetGetUniversalNameW(
     LPCWSTR lpLocalPath,
     DWORD    dwInfoLevel,
     LPVOID   lpBuffer,
     LPDWORD  lpBufferSize
     );




#line 525 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





DWORD __stdcall
WNetGetUserA(
     LPCSTR  lpName,
     LPSTR   lpUserName,
     LPDWORD   lpnLength
    );
DWORD __stdcall
WNetGetUserW(
     LPCWSTR  lpName,
     LPWSTR   lpUserName,
     LPDWORD   lpnLength
    );




#line 547 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"











#line 559 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"



DWORD __stdcall
WNetGetProviderNameA(
    DWORD   dwNetType,
    LPSTR lpProviderName,
    LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetGetProviderNameW(
    DWORD   dwNetType,
    LPWSTR lpProviderName,
    LPDWORD lpBufferSize
    );




#line 579 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

typedef struct _NETINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwProviderVersion;
    DWORD dwStatus;
    DWORD dwCharacteristics;
    DWORD dwHandle;
    WORD  wNetType;
    DWORD dwPrinters;
    DWORD dwDrives;
} NETINFOSTRUCT,  *LPNETINFOSTRUCT;





DWORD __stdcall
WNetGetNetworkInformationA(
    LPCSTR          lpProvider,
    LPNETINFOSTRUCT   lpNetInfoStruct
    );
DWORD __stdcall
WNetGetNetworkInformationW(
    LPCWSTR          lpProvider,
    LPNETINFOSTRUCT   lpNetInfoStruct
    );




#line 610 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





typedef UINT ( __stdcall *PFNGETPROFILEPATHA) (
    LPCSTR    pszUsername,
    LPSTR     pszBuffer,
    UINT        cbBuffer
    );
typedef UINT ( __stdcall *PFNGETPROFILEPATHW) (
    LPCWSTR    pszUsername,
    LPWSTR     pszBuffer,
    UINT        cbBuffer
    );




#line 630 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

typedef UINT ( __stdcall *PFNRECONCILEPROFILEA) (
    LPCSTR    pszCentralFile,
    LPCSTR    pszLocalFile,
    DWORD       dwFlags
    );
typedef UINT ( __stdcall *PFNRECONCILEPROFILEW) (
    LPCWSTR    pszCentralFile,
    LPCWSTR    pszLocalFile,
    DWORD       dwFlags
    );




#line 646 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"









typedef BOOL ( __stdcall *PFNPROCESSPOLICIESA) (
    HWND        hwnd,
    LPCSTR    pszPath,
    LPCSTR    pszUsername,
    LPCSTR    pszComputerName,
    DWORD       dwFlags
    );
typedef BOOL ( __stdcall *PFNPROCESSPOLICIESW) (
    HWND        hwnd,
    LPCWSTR    pszPath,
    LPCWSTR    pszUsername,
    LPCWSTR    pszComputerName,
    DWORD       dwFlags
    );




#line 674 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"


#line 677 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





DWORD __stdcall
WNetGetLastErrorA(
     LPDWORD    lpError,
     LPSTR    lpErrorBuf,
     DWORD      nErrorBufSize,
     LPSTR    lpNameBuf,
     DWORD      nNameBufSize
    );
DWORD __stdcall
WNetGetLastErrorW(
     LPDWORD    lpError,
     LPWSTR    lpErrorBuf,
     DWORD      nErrorBufSize,
     LPWSTR    lpNameBuf,
     DWORD      nNameBufSize
    );




#line 703 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"





























#line 733 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"






























#line 764 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"






typedef struct _NETCONNECTINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwFlags;
    DWORD dwSpeed;
    DWORD dwDelay;
    DWORD dwOptDataSize;
} NETCONNECTINFOSTRUCT,  *LPNETCONNECTINFOSTRUCT;






DWORD __stdcall
MultinetGetConnectionPerformanceA(
        LPNETRESOURCEA lpNetResource,
        LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );
DWORD __stdcall
MultinetGetConnectionPerformanceW(
        LPNETRESOURCEW lpNetResource,
        LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );




#line 798 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"
#line 799 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"


}
#line 803 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

#line 805 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winnetwk.h"

#line 183 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 184 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\cderr.h"

























































#line 59 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\cderr.h"
#line 187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"















extern "C" {
#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"




























typedef struct {

        unsigned short bAppReturnCode:8,
                 reserved:6,
                 fBusy:1,
		 fAck:1;


#line 55 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
} DDEACK;









typedef struct {

        unsigned short reserved:14,
                 fDeferUpd:1,
		 fAckReq:1;


#line 73 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
	short     cfFormat;
} DDEADVISE;











typedef struct {

	unsigned short unused:12,
                 fResponse:1,
                 fRelease:1,
                 reserved:1,
                 fAckReq:1;


#line 96 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
	short	 cfFormat;
	BYTE	 Value[1];
} DDEDATA;











typedef struct {

	unsigned short unused:13,  
                             
		 fRelease:1,
		 fReserved:2;


#line 119 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
	short    cfFormat;
	BYTE	 Value[1];  
                            

} DDEPOKE;











typedef struct {

        unsigned short unused:13,
                 fRelease:1,
                 fDeferUpd:1,
		 fAckReq:1;


#line 144 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
	short	 cfFormat;
} DDELN;

typedef struct {

	unsigned short unused:12,
                 fAck:1,
                 fRelease:1,
                 fReserved:1,
                 fAckReq:1;


#line 157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
	short	 cfFormat;
	BYTE	 rgb[1];
} DDEUP;






BOOL
__stdcall
DdeSetQualityOfService(
    HWND hwndClient,
    const SECURITY_QUALITY_OF_SERVICE *pqosNew,
    PSECURITY_QUALITY_OF_SERVICE pqosPrev);

BOOL
__stdcall
ImpersonateDdeClientWindow(
    HWND hWndClient,
    HWND hWndServer);




LONG __stdcall PackDDElParam(UINT msg, UINT uiLo, UINT uiHi);
BOOL __stdcall UnpackDDElParam(UINT msg, LONG lParam, PUINT puiLo, PUINT puiHi);
BOOL __stdcall FreeDDElParam(UINT msg, LONG lParam);
LONG __stdcall ReuseDDElParam(LONG lParam, UINT msgIn, UINT msgOut, UINT uiLo, UINT uiHi);


}
#line 190 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"

#line 192 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dde.h"
#line 188 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"
















extern "C" {
#line 19 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"



struct HCONVLIST__ { int unused; }; typedef struct HCONVLIST__ *HCONVLIST;
struct HCONV__ { int unused; }; typedef struct HCONV__ *HCONV;
struct HSZ__ { int unused; }; typedef struct HSZ__ *HSZ;
struct HDDEDATA__ { int unused; }; typedef struct HDDEDATA__ *HDDEDATA;




typedef struct tagHSZPAIR {
    HSZ hszSvc;
    HSZ hszTopic;
} HSZPAIR;
typedef HSZPAIR  *PHSZPAIR;




typedef struct tagCONVCONTEXT {
    UINT        cb;             
    UINT        wFlags;         
    UINT        wCountryID;     
    int         iCodePage;      
    DWORD       dwLangID;       
    DWORD       dwSecurity;     
    SECURITY_QUALITY_OF_SERVICE qos;  
} CONVCONTEXT;
typedef CONVCONTEXT  *PCONVCONTEXT;




typedef struct tagCONVINFO {
    DWORD   cb;            
    DWORD   hUser;         
    HCONV   hConvPartner;  
    HSZ     hszSvcPartner; 
    HSZ     hszServiceReq; 
    HSZ     hszTopic;      
    HSZ     hszItem;       
    UINT    wFmt;          
    UINT    wType;         
    UINT    wStatus;       
    UINT    wConvst;       
    UINT    wLastError;    
    HCONVLIST hConvList;   
    CONVCONTEXT ConvCtxt;  
    HWND    hwnd;          
    HWND    hwndPartner;   
} CONVINFO;
typedef CONVINFO  *PCONVINFO;
































































#line 137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"




























































#line 198 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"




typedef HDDEDATA __stdcall FNCALLBACK(UINT wType, UINT wFmt, HCONV hConv,
        HSZ hsz1, HSZ hsz2, HDDEDATA hData, DWORD dwData1, DWORD dwData2);
typedef HDDEDATA (__stdcall *PFNCALLBACK)(UINT wType, UINT wFmt, HCONV hConv,
        HSZ hsz1, HSZ hsz2, HDDEDATA hData, DWORD dwData1, DWORD dwData2);





UINT __stdcall DdeInitializeA(LPDWORD pidInst, PFNCALLBACK pfnCallback,
        DWORD afCmd, DWORD ulRes);
UINT __stdcall DdeInitializeW(LPDWORD pidInst, PFNCALLBACK pfnCallback,
        DWORD afCmd, DWORD ulRes);




#line 220 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"
































BOOL __stdcall DdeUninitialize(DWORD idInst);





HCONVLIST __stdcall DdeConnectList(DWORD idInst, HSZ hszService, HSZ hszTopic,
        HCONVLIST hConvList, PCONVCONTEXT pCC);
HCONV __stdcall DdeQueryNextServer(HCONVLIST hConvList, HCONV hConvPrev);
BOOL __stdcall DdeDisconnectList(HCONVLIST hConvList);





HCONV __stdcall DdeConnect(DWORD idInst, HSZ hszService, HSZ hszTopic,
        PCONVCONTEXT pCC);
BOOL __stdcall DdeDisconnect(HCONV hConv);
HCONV __stdcall DdeReconnect(HCONV hConv);
UINT __stdcall DdeQueryConvInfo(HCONV hConv, DWORD idTransaction, PCONVINFO pConvInfo);
BOOL __stdcall DdeSetUserHandle(HCONV hConv, DWORD id, DWORD hUser);
BOOL __stdcall DdeAbandonTransaction(DWORD idInst, HCONV hConv, DWORD idTransaction);






BOOL __stdcall DdePostAdvise(DWORD idInst, HSZ hszTopic, HSZ hszItem);
BOOL __stdcall DdeEnableCallback(DWORD idInst, HCONV hConv, UINT wCmd);
BOOL __stdcall DdeImpersonateClient(HCONV hConv);






HDDEDATA __stdcall DdeNameService(DWORD idInst, HSZ hsz1, HSZ hsz2, UINT afCmd);










HDDEDATA __stdcall DdeClientTransaction(LPBYTE pData, DWORD cbData,
        HCONV hConv, HSZ hszItem, UINT wFmt, UINT wType,
        DWORD dwTimeout, LPDWORD pdwResult);





HDDEDATA __stdcall DdeCreateDataHandle(DWORD idInst, LPBYTE pSrc, DWORD cb,
        DWORD cbOff, HSZ hszItem, UINT wFmt, UINT afCmd);
HDDEDATA __stdcall DdeAddData(HDDEDATA hData, LPBYTE pSrc, DWORD cb, DWORD cbOff);
DWORD __stdcall DdeGetData(HDDEDATA hData, LPBYTE pDst, DWORD cbMax, DWORD cbOff);
LPBYTE __stdcall DdeAccessData(HDDEDATA hData, LPDWORD pcbDataSize);
BOOL __stdcall DdeUnaccessData(HDDEDATA hData);
BOOL __stdcall DdeFreeDataHandle(HDDEDATA hData);




UINT __stdcall DdeGetLastError(DWORD idInst);


























HSZ  __stdcall DdeCreateStringHandleA(DWORD idInst, LPCSTR psz, int iCodePage);
HSZ  __stdcall DdeCreateStringHandleW(DWORD idInst, LPCWSTR psz, int iCodePage);




#line 353 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"
DWORD __stdcall DdeQueryStringA(DWORD idInst, HSZ hsz, LPSTR psz, DWORD cchMax, int iCodePage);
DWORD __stdcall DdeQueryStringW(DWORD idInst, HSZ hsz, LPWSTR psz, DWORD cchMax, int iCodePage);




#line 360 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"
BOOL __stdcall DdeFreeStringHandle(DWORD idInst, HSZ hsz);
BOOL __stdcall DdeKeepStringHandle(DWORD idInst, HSZ hsz);
int __stdcall DdeCmpStringHandles(HSZ hsz1, HSZ hsz2);







typedef struct tagDDEML_MSG_HOOK_DATA {    
    UINT uiLo;      
    UINT uiHi;
    DWORD cbData;   
    DWORD Data[8];  
} DDEML_MSG_HOOK_DATA, *PDDEML_MSG_HOOK_DATA;


typedef struct tagMONMSGSTRUCT {
    UINT    cb;
    HWND    hwndTo;
    DWORD   dwTime;
    HANDLE  hTask;
    UINT    wMsg;
    WPARAM  wParam;
    LPARAM  lParam;
    DDEML_MSG_HOOK_DATA dmhd;       
} MONMSGSTRUCT, *PMONMSGSTRUCT;

typedef struct tagMONCBSTRUCT {
    UINT   cb;
    DWORD  dwTime;
    HANDLE hTask;
    DWORD  dwRet;
    UINT   wType;
    UINT   wFmt;
    HCONV  hConv;
    HSZ    hsz1;
    HSZ    hsz2;
    HDDEDATA hData;
    DWORD  dwData1;
    DWORD  dwData2;
    CONVCONTEXT cc;                 
    DWORD  cbData;                  
    DWORD  Data[8];                 
} MONCBSTRUCT, *PMONCBSTRUCT;

typedef struct tagMONHSZSTRUCTA {
    UINT   cb;
    BOOL   fsAction;    
    DWORD  dwTime;
    HSZ    hsz;
    HANDLE hTask;
    CHAR    str[1];
} MONHSZSTRUCTA, *PMONHSZSTRUCTA;
typedef struct tagMONHSZSTRUCTW {
    UINT   cb;
    BOOL   fsAction;    
    DWORD  dwTime;
    HSZ    hsz;
    HANDLE hTask;
    WCHAR   str[1];
} MONHSZSTRUCTW, *PMONHSZSTRUCTW;

typedef MONHSZSTRUCTW MONHSZSTRUCT;
typedef PMONHSZSTRUCTW PMONHSZSTRUCT;



#line 430 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"






typedef struct tagMONERRSTRUCT {
    UINT    cb;
    UINT    wLastError;
    DWORD   dwTime;
    HANDLE  hTask;
} MONERRSTRUCT, *PMONERRSTRUCT;

typedef struct tagMONLINKSTRUCT {
    UINT    cb;
    DWORD   dwTime;
    HANDLE  hTask;
    BOOL    fEstablished;
    BOOL    fNoData;
    HSZ     hszSvc;
    HSZ     hszTopic;
    HSZ     hszItem;
    UINT    wFmt;
    BOOL    fServer;
    HCONV   hConvServer;
    HCONV   hConvClient;
} MONLINKSTRUCT, *PMONLINKSTRUCT;

typedef struct tagMONCONVSTRUCT {
    UINT    cb;
    BOOL    fConnect;
    DWORD   dwTime;
    HANDLE  hTask;
    HSZ     hszSvc;
    HSZ     hszTopic;
    HCONV   hConvClient;        
    HCONV   hConvServer;        
} MONCONVSTRUCT, *PMONCONVSTRUCT;


















#line 487 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"


}
#line 491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"

#line 493 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ddeml.h"


#line 189 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dlgs.h"










































































































































































































































#line 236 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dlgs.h"







typedef struct tagCRGB
{
    BYTE    bRed;
    BYTE    bGreen;
    BYTE    bBlue;
    BYTE    bExtra;
} CRGB;           


#line 253 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\dlgs.h"
#line 190 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"








extern "C" {
#line 11 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"



















INT
__stdcall
LZStart(
	void
	);

void
__stdcall
LZDone(
	void
	);

LONG
__stdcall
CopyLZFile(
	INT,
	INT
	);

LONG
__stdcall
LZCopy(
	INT,
	INT
	);

INT
__stdcall
LZInit(
	INT
	);

INT
__stdcall
GetExpandedNameA(
	LPSTR,
	LPSTR
	);
INT
__stdcall
GetExpandedNameW(
	LPWSTR,
	LPWSTR
	);




#line 79 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"

INT
__stdcall
LZOpenFileA(
	LPSTR,
	LPOFSTRUCT,
	WORD
	);
INT
__stdcall
LZOpenFileW(
	LPWSTR,
	LPOFSTRUCT,
	WORD
	);




#line 99 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"

LONG
__stdcall
LZSeek(
	INT,
	LONG,
	INT
	);

INT
__stdcall
LZRead(
	INT,
	LPSTR,
	INT
	);

void
__stdcall
LZClose(
	INT
	);


}
#line 125 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"


#line 128 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\lzexpand.h"
#line 192 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"































#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 38 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


extern "C" {            
#line 42 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 49 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 54 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






















































#line 109 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




typedef UINT        MMVERSION;  


#line 117 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
typedef UINT        MMRESULT;   
				


typedef UINT    *LPUINT;


typedef struct mmtime_tag
{
    UINT            wType;      
    union
    {
	DWORD       ms;         
	DWORD       sample;     
	DWORD       cb;         
	DWORD       ticks;      

	
	struct
	{
	    BYTE    hour;       
	    BYTE    min;        
	    BYTE    sec;        
	    BYTE    frame;      
	    BYTE    fps;        
	    BYTE    dummy;      

	    BYTE    pad[2];
#line 146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
	} smpte;

	
	struct
	{
	    DWORD songptrpos;   
	} midi;
    } u;
} MMTIME, *PMMTIME,  *NPMMTIME,  *LPMMTIME;























































 
 
 
 
#line 215 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











 
#line 228 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 232 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











































						   
						   











struct HDRVR__ { int unused; }; typedef struct HDRVR__ *HDRVR;
#line 290 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










typedef struct DRVCONFIGINFOEX {
    DWORD   dwDCISize;
    LPCWSTR  lpszDCISectionName;
    LPCWSTR  lpszDCIAliasName;
    DWORD    dnDevNode;
} DRVCONFIGINFOEX, *PDRVCONFIGINFOEX,  *NPDRVCONFIGINFOEX,  *LPDRVCONFIGINFOEX;








#line 315 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"























typedef struct tagDRVCONFIGINFO {
    DWORD   dwDCISize;
    LPCWSTR  lpszDCISectionName;
    LPCWSTR  lpszDCIAliasName;
} DRVCONFIGINFO, *PDRVCONFIGINFO,  *NPDRVCONFIGINFO,  *LPDRVCONFIGINFO;






#line 350 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"








 

typedef LRESULT (__stdcall* DRIVERPROC)(DWORD, HDRVR, UINT, LPARAM, LPARAM);

__declspec(dllimport) LRESULT   __stdcall CloseDriver(HDRVR hDriver, LONG lParam1, LONG lParam2);
__declspec(dllimport) HDRVR     __stdcall OpenDriver(LPCWSTR szDriverName, LPCWSTR szSectionName, LONG lParam2);
__declspec(dllimport) LRESULT   __stdcall SendDriverMessage(HDRVR hDriver, UINT message, LONG lParam1, LONG lParam2);
__declspec(dllimport) HMODULE   __stdcall DrvGetModuleHandle(HDRVR hDriver);
__declspec(dllimport) HMODULE   __stdcall GetDriverModuleHandle(HDRVR hDriver);
__declspec(dllimport) LRESULT   __stdcall DefDriverProc(DWORD dwDriverIdentifier, HDRVR hdrvr, UINT uMsg, LPARAM lParam1, LPARAM lParam2);
 #line 369 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







#line 377 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 378 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 379 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







#line 387 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


















#line 411 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



typedef void (__stdcall DRVCALLBACK)(HDRVR hdrvr, UINT uMsg, DWORD dwUser, DWORD dw1, DWORD dw2);

typedef DRVCALLBACK  *LPDRVCALLBACK;

typedef DRVCALLBACK     *PDRVCALLBACK;
#line 420 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 422 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











#line 434 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 439 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 441 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 442 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











__declspec(dllimport) BOOL __stdcall sndPlaySoundA(LPCSTR pszSound, UINT fuSound);
__declspec(dllimport) BOOL __stdcall sndPlaySoundW(LPCWSTR pszSound, UINT fuSound);




#line 460 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 464 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



















#line 484 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"















__declspec(dllimport) BOOL __stdcall PlaySoundA(LPCSTR pszSound, HMODULE hmod, DWORD fdwSound);
__declspec(dllimport) BOOL __stdcall PlaySoundW(LPCWSTR pszSound, HMODULE hmod, DWORD fdwSound);




#line 506 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 510 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 512 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 513 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
















struct HWAVE__ { int unused; }; typedef struct HWAVE__ *HWAVE;
struct HWAVEIN__ { int unused; }; typedef struct HWAVEIN__ *HWAVEIN;
struct HWAVEOUT__ { int unused; }; typedef struct HWAVEOUT__ *HWAVEOUT;

typedef HWAVEIN  *LPHWAVEIN;
typedef HWAVEOUT  *LPHWAVEOUT;
typedef DRVCALLBACK WAVECALLBACK;
typedef WAVECALLBACK  *LPWAVECALLBACK;
#line 538 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



















#line 558 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct wavehdr_tag {
    LPSTR       lpData;                 
    DWORD       dwBufferLength;         
    DWORD       dwBytesRecorded;        
    DWORD       dwUser;                 
    DWORD       dwFlags;                
    DWORD       dwLoops;                
    struct wavehdr_tag  *lpNext;     
    DWORD       reserved;               
} WAVEHDR, *PWAVEHDR,  *NPWAVEHDR,  *LPWAVEHDR;











typedef struct tagWAVEOUTCAPSA {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
} WAVEOUTCAPSA, *PWAVEOUTCAPSA, *NPWAVEOUTCAPSA, *LPWAVEOUTCAPSA;
typedef struct tagWAVEOUTCAPSW {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
} WAVEOUTCAPSW, *PWAVEOUTCAPSW, *NPWAVEOUTCAPSW, *LPWAVEOUTCAPSW;

typedef WAVEOUTCAPSW WAVEOUTCAPS;
typedef PWAVEOUTCAPSW PWAVEOUTCAPS;
typedef NPWAVEOUTCAPSW NPWAVEOUTCAPS;
typedef LPWAVEOUTCAPSW LPWAVEOUTCAPS;





#line 612 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











#line 624 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"













typedef struct tagWAVEINCAPSA {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    CHAR    szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
} WAVEINCAPSA, *PWAVEINCAPSA, *NPWAVEINCAPSA, *LPWAVEINCAPSA;
typedef struct tagWAVEINCAPSW {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    WCHAR   szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
} WAVEINCAPSW, *PWAVEINCAPSW, *NPWAVEINCAPSW, *LPWAVEINCAPSW;

typedef WAVEINCAPSW WAVEINCAPS;
typedef PWAVEINCAPSW PWAVEINCAPS;
typedef NPWAVEINCAPSW NPWAVEINCAPS;
typedef LPWAVEINCAPSW LPWAVEINCAPS;





#line 666 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










#line 677 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

















typedef struct waveformat_tag {
    WORD    wFormatTag;        
    WORD    nChannels;         
    DWORD   nSamplesPerSec;    
    DWORD   nAvgBytesPerSec;   
    WORD    nBlockAlign;       
} WAVEFORMAT, *PWAVEFORMAT,  *NPWAVEFORMAT,  *LPWAVEFORMAT;





typedef struct pcmwaveformat_tag {
    WAVEFORMAT  wf;
    WORD        wBitsPerSample;
} PCMWAVEFORMAT, *PPCMWAVEFORMAT,  *NPPCMWAVEFORMAT,  *LPPCMWAVEFORMAT;








typedef struct tWAVEFORMATEX
{
    WORD        wFormatTag;         
    WORD        nChannels;          
    DWORD       nSamplesPerSec;     
    DWORD       nAvgBytesPerSec;    
    WORD        nBlockAlign;        
    WORD        wBitsPerSample;     
    WORD        cbSize;             
				    
} WAVEFORMATEX, *PWAVEFORMATEX,  *NPWAVEFORMATEX,  *LPWAVEFORMATEX;
typedef const WAVEFORMATEX  *LPCWAVEFORMATEX;

#line 732 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) UINT __stdcall waveOutGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall waveOutGetDevCapsA(UINT uDeviceID, LPWAVEOUTCAPSA pwoc, UINT cbwoc);
__declspec(dllimport) MMRESULT __stdcall waveOutGetDevCapsW(UINT uDeviceID, LPWAVEOUTCAPSW pwoc, UINT cbwoc);




#line 746 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 750 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


__declspec(dllimport) MMRESULT __stdcall waveOutGetVolume(HWAVEOUT hwo, LPDWORD pdwVolume);
__declspec(dllimport) MMRESULT __stdcall waveOutSetVolume(HWAVEOUT hwo, DWORD dwVolume);



#line 758 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) MMRESULT __stdcall waveOutGetErrorTextA(MMRESULT mmrError, LPSTR pszText, UINT cchText);
__declspec(dllimport) MMRESULT __stdcall waveOutGetErrorTextW(MMRESULT mmrError, LPWSTR pszText, UINT cchText);




#line 768 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 772 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall waveOutOpen(LPHWAVEOUT phwo, UINT uDeviceID,
    LPCWAVEFORMATEX pwfx, DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);

__declspec(dllimport) MMRESULT __stdcall waveOutClose(HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutPrepareHeader(HWAVEOUT hwo, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutUnprepareHeader(HWAVEOUT hwo, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutWrite(HWAVEOUT hwo, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutPause(HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutRestart(HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutReset(HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutBreakLoop(HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPosition(HWAVEOUT hwo, LPMMTIME pmmt, UINT cbmmt);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPitch(HWAVEOUT hwo, LPDWORD pdwPitch);
__declspec(dllimport) MMRESULT __stdcall waveOutSetPitch(HWAVEOUT hwo, DWORD dwPitch);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPlaybackRate(HWAVEOUT hwo, LPDWORD pdwRate);
__declspec(dllimport) MMRESULT __stdcall waveOutSetPlaybackRate(HWAVEOUT hwo, DWORD dwRate);
__declspec(dllimport) MMRESULT __stdcall waveOutGetID(HWAVEOUT hwo, LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall waveOutMessage(HWAVEOUT hwo, UINT uMsg, DWORD dw1, DWORD dw2);


#line 797 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 798 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) UINT __stdcall waveInGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall waveInGetDevCapsA(UINT uDeviceID, LPWAVEINCAPSA pwic, UINT cbwic);
__declspec(dllimport) MMRESULT __stdcall waveInGetDevCapsW(UINT uDeviceID, LPWAVEINCAPSW pwic, UINT cbwic);




#line 810 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 814 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) MMRESULT __stdcall waveInGetErrorTextA(MMRESULT mmrError, LPSTR pszText, UINT cchText);
__declspec(dllimport) MMRESULT __stdcall waveInGetErrorTextW(MMRESULT mmrError, LPWSTR pszText, UINT cchText);




#line 824 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 828 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall waveInOpen(LPHWAVEIN phwi, UINT uDeviceID,
    LPCWAVEFORMATEX pwfx, DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);

__declspec(dllimport) MMRESULT __stdcall waveInClose(HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInPrepareHeader(HWAVEIN hwi, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInUnprepareHeader(HWAVEIN hwi, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInAddBuffer(HWAVEIN hwi, LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInStart(HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInStop(HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInReset(HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInGetPosition(HWAVEIN hwi, LPMMTIME pmmt, UINT cbmmt);
__declspec(dllimport) MMRESULT __stdcall waveInGetID(HWAVEIN hwi, LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall waveInMessage(HWAVEIN hwi, UINT uMsg, DWORD dw1, DWORD dw2);


#line 848 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 849 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 851 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 853 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




















struct HMIDI__ { int unused; }; typedef struct HMIDI__ *HMIDI;
struct HMIDIIN__ { int unused; }; typedef struct HMIDIIN__ *HMIDIIN;
struct HMIDIOUT__ { int unused; }; typedef struct HMIDIOUT__ *HMIDIOUT;
struct HMIDISTRM__ { int unused; }; typedef struct HMIDISTRM__ *HMIDISTRM;

typedef HMIDI  *LPHMIDI;
typedef HMIDIIN  *LPHMIDIIN;
typedef HMIDIOUT  *LPHMIDIOUT;
typedef HMIDISTRM  *LPHMIDISTRM;
typedef DRVCALLBACK MIDICALLBACK;
typedef MIDICALLBACK  *LPMIDICALLBACK;

typedef WORD PATCHARRAY[128];
typedef WORD  *LPPATCHARRAY;
typedef WORD KEYARRAY[128];
typedef WORD  *LPKEYARRAY;
#line 890 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"















#line 906 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"








#line 915 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










typedef struct tagMIDIOUTCAPSA {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
} MIDIOUTCAPSA, *PMIDIOUTCAPSA, *NPMIDIOUTCAPSA, *LPMIDIOUTCAPSA;
typedef struct tagMIDIOUTCAPSW {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
} MIDIOUTCAPSW, *PMIDIOUTCAPSW, *NPMIDIOUTCAPSW, *LPMIDIOUTCAPSW;

typedef MIDIOUTCAPSW MIDIOUTCAPS;
typedef PMIDIOUTCAPSW PMIDIOUTCAPS;
typedef NPMIDIOUTCAPSW NPMIDIOUTCAPS;
typedef LPMIDIOUTCAPSW LPMIDIOUTCAPS;





#line 958 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"













#line 972 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"














#line 987 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




typedef struct tagMIDIINCAPSA {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    CHAR        szPname[32];   

    DWORD   dwSupport;             
#line 999 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MIDIINCAPSA, *PMIDIINCAPSA, *NPMIDIINCAPSA, *LPMIDIINCAPSA;
typedef struct tagMIDIINCAPSW {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    WCHAR       szPname[32];   

    DWORD   dwSupport;             
#line 1008 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MIDIINCAPSW, *PMIDIINCAPSW, *NPMIDIINCAPSW, *LPMIDIINCAPSW;

typedef MIDIINCAPSW MIDIINCAPS;
typedef PMIDIINCAPSW PMIDIINCAPS;
typedef NPMIDIINCAPSW NPMIDIINCAPS;
typedef LPMIDIINCAPSW LPMIDIINCAPS;





#line 1020 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











#line 1032 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct midihdr_tag {
    LPSTR       lpData;               
    DWORD       dwBufferLength;       
    DWORD       dwBytesRecorded;      
    DWORD       dwUser;               
    DWORD       dwFlags;              
    struct midihdr_tag  *lpNext;   
    DWORD       reserved;             

    DWORD       dwOffset;             
    DWORD       dwReserved[8];        
#line 1046 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MIDIHDR, *PMIDIHDR,  *NPMIDIHDR,  *LPMIDIHDR;


typedef struct midievent_tag
{
    DWORD       dwDeltaTime;          
    DWORD       dwStreamID;           
    DWORD       dwEvent;              
    DWORD       dwParms[1];           
} MIDIEVENT;

typedef struct midistrmbuffver_tag
{
    DWORD       dwVersion;                  
    DWORD       dwMid;                      
    DWORD       dwOEMVersion;               
} MIDISTRMBUFFVER;
#line 1064 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




















































typedef struct midiproptimediv_tag
{
    DWORD       cbStruct;
    DWORD       dwTimeDiv;
} MIDIPROPTIMEDIV,  *LPMIDIPROPTIMEDIV;

typedef struct midiproptempo_tag
{
    DWORD       cbStruct;
    DWORD       dwTempo;
} MIDIPROPTEMPO,  *LPMIDIPROPTEMPO;

#line 1129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




__declspec(dllimport) UINT __stdcall midiOutGetNumDevs(void);

__declspec(dllimport) MMRESULT __stdcall midiStreamOpen(LPHMIDISTRM phms, LPUINT puDeviceID, DWORD cMidi, DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiStreamClose(HMIDISTRM hms);

__declspec(dllimport) MMRESULT __stdcall midiStreamProperty(HMIDISTRM hms, LPBYTE lppropdata, DWORD dwProperty);
__declspec(dllimport) MMRESULT __stdcall midiStreamPosition(HMIDISTRM hms, LPMMTIME lpmmt, UINT cbmmt);

__declspec(dllimport) MMRESULT __stdcall midiStreamOut(HMIDISTRM hms, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiStreamPause(HMIDISTRM hms);
__declspec(dllimport) MMRESULT __stdcall midiStreamRestart(HMIDISTRM hms);
__declspec(dllimport) MMRESULT __stdcall midiStreamStop(HMIDISTRM hms);


__declspec(dllimport) MMRESULT __stdcall midiConnect(HMIDI hmi, HMIDIOUT hmo, LPVOID pReserved);
__declspec(dllimport) MMRESULT __stdcall midiDisconnect(HMIDI hmi, HMIDIOUT hmo, LPVOID pReserved);
#line 1150 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1151 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) MMRESULT __stdcall midiOutGetDevCapsA(UINT uDeviceID, LPMIDIOUTCAPSA pmoc, UINT cbmoc);
__declspec(dllimport) MMRESULT __stdcall midiOutGetDevCapsW(UINT uDeviceID, LPMIDIOUTCAPSW pmoc, UINT cbmoc);




#line 1161 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1165 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


__declspec(dllimport) MMRESULT __stdcall midiOutGetVolume(HMIDIOUT hmo, LPDWORD pdwVolume);
__declspec(dllimport) MMRESULT __stdcall midiOutSetVolume(HMIDIOUT hmo, DWORD dwVolume);



#line 1173 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) MMRESULT __stdcall midiOutGetErrorTextA(MMRESULT mmrError, LPSTR pszText, UINT cchText);
__declspec(dllimport) MMRESULT __stdcall midiOutGetErrorTextW(MMRESULT mmrError, LPWSTR pszText, UINT cchText);




#line 1183 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall midiOutOpen(LPHMIDIOUT phmo, UINT uDeviceID,
    DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiOutClose(HMIDIOUT hmo);
__declspec(dllimport) MMRESULT __stdcall midiOutPrepareHeader(HMIDIOUT hmo, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutUnprepareHeader(HMIDIOUT hmo, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutShortMsg(HMIDIOUT hmo, DWORD dwMsg);
__declspec(dllimport) MMRESULT __stdcall midiOutLongMsg(HMIDIOUT hmo, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutReset(HMIDIOUT hmo);
__declspec(dllimport) MMRESULT __stdcall midiOutCachePatches(HMIDIOUT hmo, UINT uBank, LPWORD pwpa, UINT fuCache);
__declspec(dllimport) MMRESULT __stdcall midiOutCacheDrumPatches(HMIDIOUT hmo, UINT uPatch, LPWORD pwkya, UINT fuCache);
__declspec(dllimport) MMRESULT __stdcall midiOutGetID(HMIDIOUT hmo, LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall midiOutMessage(HMIDIOUT hmo, UINT uMsg, DWORD dw1, DWORD dw2);


#line 1206 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1207 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) UINT __stdcall midiInGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall midiInGetDevCapsA(UINT uDeviceID, LPMIDIINCAPSA pmic, UINT cbmic);
__declspec(dllimport) MMRESULT __stdcall midiInGetDevCapsW(UINT uDeviceID, LPMIDIINCAPSW pmic, UINT cbmic);




#line 1219 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MMRESULT __stdcall midiInGetErrorTextA(MMRESULT mmrError, LPSTR pszText, UINT cchText);
__declspec(dllimport) MMRESULT __stdcall midiInGetErrorTextW(MMRESULT mmrError, LPWSTR pszText, UINT cchText);




#line 1226 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 1231 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall midiInOpen(LPHMIDIIN phmi, UINT uDeviceID,
	DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiInClose(HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInPrepareHeader(HMIDIIN hmi, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInUnprepareHeader(HMIDIIN hmi, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInAddBuffer(HMIDIIN hmi, LPMIDIHDR pmh, UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInStart(HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInStop(HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInReset(HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInGetID(HMIDIIN hmi, LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall midiInMessage(HMIDIIN hmi, UINT uMsg, DWORD dw1, DWORD dw2);


#line 1249 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1250 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 1252 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 1254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"














typedef struct tagAUXCAPSA {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    CHAR        szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
} AUXCAPSA, *PAUXCAPSA, *NPAUXCAPSA, *LPAUXCAPSA;
typedef struct tagAUXCAPSW {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    WCHAR       szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
} AUXCAPSW, *PAUXCAPSW, *NPAUXCAPSW, *LPAUXCAPSW;

typedef AUXCAPSW AUXCAPS;
typedef PAUXCAPSW PAUXCAPS;
typedef NPAUXCAPSW NPAUXCAPS;
typedef LPAUXCAPSW LPAUXCAPS;





#line 1297 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










#line 1308 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"












__declspec(dllimport) UINT __stdcall auxGetNumDevs(void);


__declspec(dllimport) MMRESULT __stdcall auxGetDevCapsA(UINT uDeviceID, LPAUXCAPSA pac, UINT cbac);
__declspec(dllimport) MMRESULT __stdcall auxGetDevCapsW(UINT uDeviceID, LPAUXCAPSW pac, UINT cbac);




#line 1330 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1334 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MMRESULT __stdcall auxSetVolume(UINT uDeviceID, DWORD dwVolume);
__declspec(dllimport) MMRESULT __stdcall auxGetVolume(UINT uDeviceID, LPDWORD pdwVolume);



__declspec(dllimport) MMRESULT __stdcall auxOutMessage(UINT uDeviceID, UINT uMsg, DWORD dw1, DWORD dw2);


#line 1343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1344 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 1346 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 1348 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"









struct HMIXEROBJ__ { int unused; }; typedef struct HMIXEROBJ__ *HMIXEROBJ;
typedef HMIXEROBJ  *LPHMIXEROBJ;

struct HMIXER__ { int unused; }; typedef struct HMIXER__ *HMIXER;
typedef HMIXER      *LPHMIXER;


























__declspec(dllimport) UINT __stdcall mixerGetNumDevs(void);



typedef struct tagMIXERCAPSA {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    CHAR            szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
} MIXERCAPSA, *PMIXERCAPSA, *LPMIXERCAPSA;
typedef struct tagMIXERCAPSW {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    WCHAR           szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
} MIXERCAPSW, *PMIXERCAPSW, *LPMIXERCAPSW;

typedef MIXERCAPSW MIXERCAPS;
typedef PMIXERCAPSW PMIXERCAPS;
typedef LPMIXERCAPSW LPMIXERCAPS;




#line 1417 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










#line 1428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



__declspec(dllimport) MMRESULT __stdcall mixerGetDevCapsA(UINT uMxId, LPMIXERCAPSA pmxcaps, UINT cbmxcaps);
__declspec(dllimport) MMRESULT __stdcall mixerGetDevCapsW(UINT uMxId, LPMIXERCAPSW pmxcaps, UINT cbmxcaps);




#line 1438 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1442 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall mixerOpen(LPHMIXER phmx, UINT uMxId, DWORD dwCallback, DWORD dwInstance, DWORD fdwOpen);

__declspec(dllimport) MMRESULT __stdcall mixerClose(HMIXER hmx);

__declspec(dllimport) DWORD __stdcall mixerMessage(HMIXER hmx, UINT uMsg, DWORD dwParam1, DWORD dwParam2);



typedef struct tagMIXERLINEA {
    DWORD       cbStruct;               
    DWORD       dwDestination;          
    DWORD       dwSource;               
    DWORD       dwLineID;               
    DWORD       fdwLine;                
    DWORD       dwUser;                 
    DWORD       dwComponentType;        
    DWORD       cChannels;              
    DWORD       cConnections;           
    DWORD       cControls;              
    CHAR        szShortName[16];
    CHAR        szName[64];
    struct {
	DWORD   dwType;                 
	DWORD   dwDeviceID;             
	WORD    wMid;                   
	WORD    wPid;                   
	MMVERSION vDriverVersion;       
	CHAR    szPname[32];   
    } Target;
} MIXERLINEA, *PMIXERLINEA, *LPMIXERLINEA;
typedef struct tagMIXERLINEW {
    DWORD       cbStruct;               
    DWORD       dwDestination;          
    DWORD       dwSource;               
    DWORD       dwLineID;               
    DWORD       fdwLine;                
    DWORD       dwUser;                 
    DWORD       dwComponentType;        
    DWORD       cChannels;              
    DWORD       cConnections;           
    DWORD       cControls;              
    WCHAR       szShortName[16];
    WCHAR       szName[64];
    struct {
	DWORD   dwType;                 
	DWORD   dwDeviceID;             
	WORD    wMid;                   
	WORD    wPid;                   
	MMVERSION vDriverVersion;       
	WCHAR   szPname[32];   
    } Target;
} MIXERLINEW, *PMIXERLINEW, *LPMIXERLINEW;

typedef MIXERLINEW MIXERLINE;
typedef PMIXERLINEW PMIXERLINE;
typedef LPMIXERLINEW LPMIXERLINE;




#line 1504 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
























#line 1529 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






















































__declspec(dllimport) MMRESULT __stdcall mixerGetLineInfoA(HMIXEROBJ hmxobj, LPMIXERLINEA pmxl, DWORD fdwInfo);
__declspec(dllimport) MMRESULT __stdcall mixerGetLineInfoW(HMIXEROBJ hmxobj, LPMIXERLINEW pmxl, DWORD fdwInfo);




#line 1590 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1594 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"









__declspec(dllimport) MMRESULT __stdcall mixerGetID(HMIXEROBJ hmxobj, UINT  *puMxId, DWORD fdwId);







typedef struct tagMIXERCONTROLA {
    DWORD           cbStruct;           
    DWORD           dwControlID;        
    DWORD           dwControlType;      
    DWORD           fdwControl;         
    DWORD           cMultipleItems;     
    CHAR            szShortName[16];
    CHAR            szName[64];
    union {
	struct {
	    LONG    lMinimum;           
	    LONG    lMaximum;           
	};
	struct {
	    DWORD   dwMinimum;          
	    DWORD   dwMaximum;          
	};
	DWORD       dwReserved[6];
    } Bounds;
    union {
	DWORD       cSteps;             
	DWORD       cbCustomData;       
	DWORD       dwReserved[6];      
    } Metrics;
} MIXERCONTROLA, *PMIXERCONTROLA, *LPMIXERCONTROLA;
typedef struct tagMIXERCONTROLW {
    DWORD           cbStruct;           
    DWORD           dwControlID;        
    DWORD           dwControlType;      
    DWORD           fdwControl;         
    DWORD           cMultipleItems;     
    WCHAR           szShortName[16];
    WCHAR           szName[64];
    union {
	struct {
	    LONG    lMinimum;           
	    LONG    lMaximum;           
	};
	struct {
	    DWORD   dwMinimum;          
	    DWORD   dwMaximum;          
	};
	DWORD       dwReserved[6];
    } Bounds;
    union {
	DWORD       cSteps;             
	DWORD       cbCustomData;       
	DWORD       dwReserved[6];      
    } Metrics;
} MIXERCONTROLW, *PMIXERCONTROLW, *LPMIXERCONTROLW;

typedef MIXERCONTROLW MIXERCONTROL;
typedef PMIXERCONTROLW PMIXERCONTROL;
typedef LPMIXERCONTROLW LPMIXERCONTROL;




#line 1670 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



























#line 1698 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




















































































typedef struct tagMIXERLINECONTROLSA {
    DWORD           cbStruct;       
    DWORD           dwLineID;       
    union {
	DWORD       dwControlID;    
	DWORD       dwControlType;  
    };
    DWORD           cControls;      
    DWORD           cbmxctrl;       
    LPMIXERCONTROLA pamxctrl;       
} MIXERLINECONTROLSA, *PMIXERLINECONTROLSA, *LPMIXERLINECONTROLSA;
typedef struct tagMIXERLINECONTROLSW {
    DWORD           cbStruct;       
    DWORD           dwLineID;       
    union {
	DWORD       dwControlID;    
	DWORD       dwControlType;  
    };
    DWORD           cControls;      
    DWORD           cbmxctrl;       
    LPMIXERCONTROLW pamxctrl;       
} MIXERLINECONTROLSW, *PMIXERLINECONTROLSW, *LPMIXERLINECONTROLSW;

typedef MIXERLINECONTROLSW MIXERLINECONTROLS;
typedef PMIXERLINECONTROLSW PMIXERLINECONTROLS;
typedef LPMIXERLINECONTROLSW LPMIXERLINECONTROLS;




#line 1813 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"













#line 1827 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






__declspec(dllimport) MMRESULT __stdcall mixerGetLineControlsA(HMIXEROBJ hmxobj, LPMIXERLINECONTROLSA pmxlc, DWORD fdwControls);
__declspec(dllimport) MMRESULT __stdcall mixerGetLineControlsW(HMIXEROBJ hmxobj, LPMIXERLINECONTROLSW pmxlc, DWORD fdwControls);




#line 1840 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1844 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







typedef struct tMIXERCONTROLDETAILS {
    DWORD           cbStruct;       
    DWORD           dwControlID;    
    DWORD           cChannels;      
    union {
	HWND        hwndOwner;      
	DWORD       cMultipleItems; 
    };
    DWORD           cbDetails;      
    LPVOID          paDetails;      
} MIXERCONTROLDETAILS, *PMIXERCONTROLDETAILS,  *LPMIXERCONTROLDETAILS;







typedef struct tagMIXERCONTROLDETAILS_LISTTEXTA {
    DWORD           dwParam1;
    DWORD           dwParam2;
    CHAR            szName[64];
} MIXERCONTROLDETAILS_LISTTEXTA, *PMIXERCONTROLDETAILS_LISTTEXTA, *LPMIXERCONTROLDETAILS_LISTTEXTA;
typedef struct tagMIXERCONTROLDETAILS_LISTTEXTW {
    DWORD           dwParam1;
    DWORD           dwParam2;
    WCHAR           szName[64];
} MIXERCONTROLDETAILS_LISTTEXTW, *PMIXERCONTROLDETAILS_LISTTEXTW, *LPMIXERCONTROLDETAILS_LISTTEXTW;

typedef MIXERCONTROLDETAILS_LISTTEXTW MIXERCONTROLDETAILS_LISTTEXT;
typedef PMIXERCONTROLDETAILS_LISTTEXTW PMIXERCONTROLDETAILS_LISTTEXT;
typedef LPMIXERCONTROLDETAILS_LISTTEXTW LPMIXERCONTROLDETAILS_LISTTEXT;




#line 1888 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







#line 1896 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"





typedef struct tMIXERCONTROLDETAILS_BOOLEAN {
    LONG            fValue;
}       MIXERCONTROLDETAILS_BOOLEAN,
      *PMIXERCONTROLDETAILS_BOOLEAN,
  *LPMIXERCONTROLDETAILS_BOOLEAN;

typedef struct tMIXERCONTROLDETAILS_SIGNED {
    LONG            lValue;
}       MIXERCONTROLDETAILS_SIGNED,
      *PMIXERCONTROLDETAILS_SIGNED,
  *LPMIXERCONTROLDETAILS_SIGNED;

typedef struct tMIXERCONTROLDETAILS_UNSIGNED {
    DWORD           dwValue;
}       MIXERCONTROLDETAILS_UNSIGNED,
      *PMIXERCONTROLDETAILS_UNSIGNED,
  *LPMIXERCONTROLDETAILS_UNSIGNED;



__declspec(dllimport) MMRESULT __stdcall mixerGetControlDetailsA(HMIXEROBJ hmxobj, LPMIXERCONTROLDETAILS pmxcd, DWORD fdwDetails);
__declspec(dllimport) MMRESULT __stdcall mixerGetControlDetailsW(HMIXEROBJ hmxobj, LPMIXERCONTROLDETAILS pmxcd, DWORD fdwDetails);




#line 1928 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 1932 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






__declspec(dllimport) MMRESULT __stdcall mixerSetControlDetails(HMIXEROBJ hmxobj, LPMIXERCONTROLDETAILS pmxcd, DWORD fdwDetails);






#line 1946 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1947 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"















typedef void (__stdcall TIMECALLBACK)(UINT uTimerID, UINT uMsg, DWORD dwUser, DWORD dw1, DWORD dw2);

typedef TIMECALLBACK  *LPTIMECALLBACK;









#line 1975 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct timecaps_tag {
    UINT    wPeriodMin;     
    UINT    wPeriodMax;     
} TIMECAPS, *PTIMECAPS,  *NPTIMECAPS,  *LPTIMECAPS;


__declspec(dllimport) MMRESULT __stdcall timeGetSystemTime(LPMMTIME pmmt, UINT cbmmt);
__declspec(dllimport) DWORD __stdcall timeGetTime(void);
__declspec(dllimport) MMRESULT __stdcall timeSetEvent(UINT uDelay, UINT uResolution,
    LPTIMECALLBACK fptc, DWORD dwUser, UINT fuEvent);
__declspec(dllimport) MMRESULT __stdcall timeKillEvent(UINT uTimerID);
__declspec(dllimport) MMRESULT __stdcall timeGetDevCaps(LPTIMECAPS ptc, UINT cbtc);
__declspec(dllimport) MMRESULT __stdcall timeBeginPeriod(UINT uPeriod);
__declspec(dllimport) MMRESULT __stdcall timeEndPeriod(UINT uPeriod);

#line 1993 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 1994 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"









































































































typedef struct tagJOYCAPSA {
    WORD    wMid;                
    WORD    wPid;                
    CHAR    szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          

    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;	 	 
    UINT    wMaxAxes;	 	 
    UINT    wNumAxes;	 	 
    UINT    wMaxButtons;	 
    CHAR    szRegKey[32];
    CHAR    szOEMVxD[260]; 
#line 2126 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} JOYCAPSA, *PJOYCAPSA, *NPJOYCAPSA, *LPJOYCAPSA;
typedef struct tagJOYCAPSW {
    WORD    wMid;                
    WORD    wPid;                
    WCHAR   szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          

    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;	 	 
    UINT    wMaxAxes;	 	 
    UINT    wNumAxes;	 	 
    UINT    wMaxButtons;	 
    WCHAR   szRegKey[32];
    WCHAR   szOEMVxD[260]; 
#line 2154 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} JOYCAPSW, *PJOYCAPSW, *NPJOYCAPSW, *LPJOYCAPSW;

typedef JOYCAPSW JOYCAPS;
typedef PJOYCAPSW PJOYCAPS;
typedef NPJOYCAPSW NPJOYCAPS;
typedef LPJOYCAPSW LPJOYCAPS;





#line 2166 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






























#line 2197 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct joyinfo_tag {
    UINT wXpos;                 
    UINT wYpos;                 
    UINT wZpos;                 
    UINT wButtons;              
} JOYINFO, *PJOYINFO,  *NPJOYINFO,  *LPJOYINFO;


typedef struct joyinfoex_tag {
    DWORD dwSize;		 
    DWORD dwFlags;		 
    DWORD dwXpos;                
    DWORD dwYpos;                
    DWORD dwZpos;                
    DWORD dwRpos;		 
    DWORD dwUpos;		 
    DWORD dwVpos;		 
    DWORD dwButtons;             
    DWORD dwButtonNumber;        
    DWORD dwPOV;                 
    DWORD dwReserved1;		 
    DWORD dwReserved2;		 
} JOYINFOEX, *PJOYINFOEX,  *NPJOYINFOEX,  *LPJOYINFOEX;
#line 2223 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




__declspec(dllimport) UINT __stdcall joyGetNumDevs(void);


__declspec(dllimport) MMRESULT __stdcall joyGetDevCapsA(UINT uJoyID, LPJOYCAPSA pjc, UINT cbjc);
__declspec(dllimport) MMRESULT __stdcall joyGetDevCapsW(UINT uJoyID, LPJOYCAPSW pjc, UINT cbjc);




#line 2237 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 2241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MMRESULT __stdcall joyGetPos(UINT uJoyID, LPJOYINFO pji);


__declspec(dllimport) MMRESULT __stdcall joyGetPosEx(UINT uJoyID, LPJOYINFOEX pji);
#line 2246 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall joyGetThreshold(UINT uJoyID, LPUINT puThreshold);
__declspec(dllimport) MMRESULT __stdcall joyReleaseCapture(UINT uJoyID);
__declspec(dllimport) MMRESULT __stdcall joySetCapture(HWND hwnd, UINT uJoyID, UINT uPeriod,
    BOOL fChanged);
__declspec(dllimport) MMRESULT __stdcall joySetThreshold(UINT uJoyID, UINT uThreshold);

#line 2254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 2256 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
































typedef DWORD           FOURCC;         
typedef char  *    HPSTR;          
struct HMMIO__ { int unused; }; typedef struct HMMIO__ *HMMIO;                  
typedef LRESULT (__stdcall MMIOPROC)(LPSTR lpmmioinfo, UINT uMsg,
	    LPARAM lParam1, LPARAM lParam2);
typedef MMIOPROC  *LPMMIOPROC;


typedef struct _MMIOINFO
{
	
	DWORD           dwFlags;        
	FOURCC          fccIOProc;      
	LPMMIOPROC      pIOProc;        
	UINT            wErrorRet;      
	HTASK           htask;          

	
	LONG            cchBuffer;      
	HPSTR           pchBuffer;      
	HPSTR           pchNext;        
	HPSTR           pchEndRead;     
	HPSTR           pchEndWrite;    
	LONG            lBufOffset;     

	
	LONG            lDiskOffset;    
	DWORD           adwInfo[3];     

	
	DWORD           dwReserved1;    
	DWORD           dwReserved2;    
	HMMIO           hmmio;          
} MMIOINFO, *PMMIOINFO,  *NPMMIOINFO,  *LPMMIOINFO;
typedef const MMIOINFO  *LPCMMIOINFO;


typedef struct _MMCKINFO
{
	FOURCC          ckid;           
	DWORD           cksize;         
	FOURCC          fccType;        
	DWORD           dwDataOffset;   
	DWORD           dwFlags;        
} MMCKINFO, *PMMCKINFO,  *NPMMCKINFO,  *LPMMCKINFO;
typedef const MMCKINFO *LPCMMCKINFO;




















































#line 2387 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
















#line 2404 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










__declspec(dllimport) FOURCC __stdcall mmioStringToFOURCCA(LPCSTR sz, UINT uFlags);
__declspec(dllimport) FOURCC __stdcall mmioStringToFOURCCW(LPCWSTR sz, UINT uFlags);




#line 2421 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) LPMMIOPROC __stdcall mmioInstallIOProcA(FOURCC fccIOProc, LPMMIOPROC pIOProc, DWORD dwFlags);
__declspec(dllimport) LPMMIOPROC __stdcall mmioInstallIOProcW(FOURCC fccIOProc, LPMMIOPROC pIOProc, DWORD dwFlags);




#line 2428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) HMMIO __stdcall mmioOpenA(LPSTR pszFileName, LPMMIOINFO pmmioinfo, DWORD fdwOpen);
__declspec(dllimport) HMMIO __stdcall mmioOpenW(LPWSTR pszFileName, LPMMIOINFO pmmioinfo, DWORD fdwOpen);




#line 2435 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MMRESULT __stdcall mmioRenameA(LPCSTR pszFileName, LPCSTR pszNewFileName, LPCMMIOINFO pmmioinfo, DWORD fdwRename);
__declspec(dllimport) MMRESULT __stdcall mmioRenameW(LPCWSTR pszFileName, LPCWSTR pszNewFileName, LPCMMIOINFO pmmioinfo, DWORD fdwRename);




#line 2442 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







#line 2450 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) MMRESULT __stdcall mmioClose(HMMIO hmmio, UINT fuClose);
__declspec(dllimport) LONG __stdcall mmioRead(HMMIO hmmio, HPSTR pch, LONG cch);
__declspec(dllimport) LONG __stdcall mmioWrite(HMMIO hmmio, const char * pch, LONG cch);
__declspec(dllimport) LONG __stdcall mmioSeek(HMMIO hmmio, LONG lOffset, int iOrigin);
__declspec(dllimport) MMRESULT __stdcall mmioGetInfo(HMMIO hmmio, LPMMIOINFO pmmioinfo, UINT fuInfo);
__declspec(dllimport) MMRESULT __stdcall mmioSetInfo(HMMIO hmmio, LPCMMIOINFO pmmioinfo, UINT fuInfo);
__declspec(dllimport) MMRESULT __stdcall mmioSetBuffer(HMMIO hmmio, LPSTR pchBuffer, LONG cchBuffer,
    UINT fuBuffer);
__declspec(dllimport) MMRESULT __stdcall mmioFlush(HMMIO hmmio, UINT fuFlush);
__declspec(dllimport) MMRESULT __stdcall mmioAdvance(HMMIO hmmio, LPMMIOINFO pmmioinfo, UINT fuAdvance);
__declspec(dllimport) LRESULT __stdcall mmioSendMessage(HMMIO hmmio, UINT uMsg,
    LPARAM lParam1, LPARAM lParam2);
__declspec(dllimport) MMRESULT __stdcall mmioDescend(HMMIO hmmio, LPMMCKINFO pmmcki,
    const MMCKINFO * pmmckiParent, UINT fuDescend);
__declspec(dllimport) MMRESULT __stdcall mmioAscend(HMMIO hmmio, LPMMCKINFO pmmcki, UINT fuAscend);
__declspec(dllimport) MMRESULT __stdcall mmioCreateChunk(HMMIO hmmio, LPMMCKINFO pmmcki, UINT fuCreate);

#line 2469 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 2470 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











typedef DWORD   MCIERROR;       
#line 2483 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



typedef UINT    MCIDEVICEID;    
#line 2488 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

typedef UINT (__stdcall *YIELDPROC)(MCIDEVICEID mciId, DWORD dwYieldData);




__declspec(dllimport) MCIERROR __stdcall mciSendCommandA(MCIDEVICEID mciId, UINT uMsg, DWORD dwParam1, DWORD dwParam2);
__declspec(dllimport) MCIERROR __stdcall mciSendCommandW(MCIDEVICEID mciId, UINT uMsg, DWORD dwParam1, DWORD dwParam2);




#line 2501 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MCIERROR  __stdcall mciSendStringA(LPCSTR lpstrCommand, LPSTR lpstrReturnString, UINT uReturnLength, HWND hwndCallback);
__declspec(dllimport) MCIERROR  __stdcall mciSendStringW(LPCWSTR lpstrCommand, LPWSTR lpstrReturnString, UINT uReturnLength, HWND hwndCallback);




#line 2508 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDA(LPCSTR pszDevice);
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDW(LPCWSTR pszDevice);




#line 2515 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDFromElementIDA(DWORD dwElementID, LPCSTR lpstrType );
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDFromElementIDW(DWORD dwElementID, LPCWSTR lpstrType );




#line 2522 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
__declspec(dllimport) BOOL __stdcall mciGetErrorStringA(MCIERROR mcierr, LPSTR pszText, UINT cchText);
__declspec(dllimport) BOOL __stdcall mciGetErrorStringW(MCIERROR mcierr, LPWSTR pszText, UINT cchText);




#line 2529 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 2536 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

__declspec(dllimport) BOOL __stdcall mciSetYieldProc(MCIDEVICEID mciId, YIELDPROC fpYieldProc,
    DWORD dwYieldData);


__declspec(dllimport) HTASK __stdcall mciGetCreatorTask(MCIDEVICEID mciId);
__declspec(dllimport) YIELDPROC __stdcall mciGetYieldProc(MCIDEVICEID mciId, LPDWORD pdwYieldData);
#line 2544 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



#line 2548 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

































































































































































































































































































typedef struct tagMCI_GENERIC_PARMS {
    DWORD   dwCallback;
} MCI_GENERIC_PARMS, *PMCI_GENERIC_PARMS,  *LPMCI_GENERIC_PARMS;




typedef struct tagMCI_OPEN_PARMSA {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR     lpstrDeviceType;
    LPCSTR     lpstrElementName;
    LPCSTR     lpstrAlias;
} MCI_OPEN_PARMSA, *PMCI_OPEN_PARMSA, *LPMCI_OPEN_PARMSA;
typedef struct tagMCI_OPEN_PARMSW {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR    lpstrDeviceType;
    LPCWSTR    lpstrElementName;
    LPCWSTR    lpstrAlias;
} MCI_OPEN_PARMSW, *PMCI_OPEN_PARMSW, *LPMCI_OPEN_PARMSW;

typedef MCI_OPEN_PARMSW MCI_OPEN_PARMS;
typedef PMCI_OPEN_PARMSW PMCI_OPEN_PARMS;
typedef LPMCI_OPEN_PARMSW LPMCI_OPEN_PARMS;




#line 2867 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










#line 2878 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_PLAY_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrom;
    DWORD   dwTo;
} MCI_PLAY_PARMS, *PMCI_PLAY_PARMS,  *LPMCI_PLAY_PARMS;


typedef struct tagMCI_SEEK_PARMS {
    DWORD   dwCallback;
    DWORD   dwTo;
} MCI_SEEK_PARMS, *PMCI_SEEK_PARMS,  *LPMCI_SEEK_PARMS;


typedef struct tagMCI_STATUS_PARMS {
    DWORD   dwCallback;
    DWORD   dwReturn;
    DWORD   dwItem;
    DWORD   dwTrack;
} MCI_STATUS_PARMS, *PMCI_STATUS_PARMS,  * LPMCI_STATUS_PARMS;




typedef struct tagMCI_INFO_PARMSA {
    DWORD   dwCallback;
    LPSTR   lpstrReturn;
    DWORD   dwRetSize;
} MCI_INFO_PARMSA, * LPMCI_INFO_PARMSA;
typedef struct tagMCI_INFO_PARMSW {
    DWORD   dwCallback;
    LPWSTR  lpstrReturn;
    DWORD   dwRetSize;
} MCI_INFO_PARMSW, * LPMCI_INFO_PARMSW;

typedef MCI_INFO_PARMSW MCI_INFO_PARMS;
typedef LPMCI_INFO_PARMSW LPMCI_INFO_PARMS;



#line 2920 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"







#line 2928 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_GETDEVCAPS_PARMS {
    DWORD   dwCallback;
    DWORD   dwReturn;
    DWORD   dwItem;
} MCI_GETDEVCAPS_PARMS, *PMCI_GETDEVCAPS_PARMS,  * LPMCI_GETDEVCAPS_PARMS;




typedef struct tagMCI_SYSINFO_PARMSA {
    DWORD   dwCallback;
    LPSTR   lpstrReturn;
    DWORD   dwRetSize;
    DWORD   dwNumber;
    UINT    wDeviceType;
} MCI_SYSINFO_PARMSA, *PMCI_SYSINFO_PARMSA, * LPMCI_SYSINFO_PARMSA;
typedef struct tagMCI_SYSINFO_PARMSW {
    DWORD   dwCallback;
    LPWSTR  lpstrReturn;
    DWORD   dwRetSize;
    DWORD   dwNumber;
    UINT    wDeviceType;
} MCI_SYSINFO_PARMSW, *PMCI_SYSINFO_PARMSW, * LPMCI_SYSINFO_PARMSW;

typedef MCI_SYSINFO_PARMSW MCI_SYSINFO_PARMS;
typedef PMCI_SYSINFO_PARMSW PMCI_SYSINFO_PARMS;
typedef LPMCI_SYSINFO_PARMSW LPMCI_SYSINFO_PARMS;




#line 2962 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"









#line 2972 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_SET_PARMS {
    DWORD   dwCallback;
    DWORD   dwTimeFormat;
    DWORD   dwAudio;
} MCI_SET_PARMS, *PMCI_SET_PARMS,  *LPMCI_SET_PARMS;


typedef struct tagMCI_BREAK_PARMS {
    DWORD   dwCallback;

    int     nVirtKey;
    HWND    hwndBreak;





#line 2992 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MCI_BREAK_PARMS, *PMCI_BREAK_PARMS,  * LPMCI_BREAK_PARMS;




typedef struct tagMCI_SAVE_PARMSA {
    DWORD    dwCallback;
    LPCSTR    lpfilename;
} MCI_SAVE_PARMSA, *PMCI_SAVE_PARMSA, * LPMCI_SAVE_PARMSA;
typedef struct tagMCI_SAVE_PARMSW {
    DWORD    dwCallback;
    LPCWSTR   lpfilename;
} MCI_SAVE_PARMSW, *PMCI_SAVE_PARMSW, * LPMCI_SAVE_PARMSW;

typedef MCI_SAVE_PARMSW MCI_SAVE_PARMS;
typedef PMCI_SAVE_PARMSW PMCI_SAVE_PARMS;
typedef LPMCI_SAVE_PARMSW LPMCI_SAVE_PARMS;




#line 3014 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 3021 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




typedef struct tagMCI_LOAD_PARMSA {
    DWORD    dwCallback;
    LPCSTR      lpfilename;
} MCI_LOAD_PARMSA, *PMCI_LOAD_PARMSA, * LPMCI_LOAD_PARMSA;
typedef struct tagMCI_LOAD_PARMSW {
    DWORD    dwCallback;
    LPCWSTR     lpfilename;
} MCI_LOAD_PARMSW, *PMCI_LOAD_PARMSW, * LPMCI_LOAD_PARMSW;

typedef MCI_LOAD_PARMSW MCI_LOAD_PARMS;
typedef PMCI_LOAD_PARMSW PMCI_LOAD_PARMS;
typedef LPMCI_LOAD_PARMSW LPMCI_LOAD_PARMS;




#line 3042 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 3049 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_RECORD_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrom;
    DWORD   dwTo;
} MCI_RECORD_PARMS,  *LPMCI_RECORD_PARMS;





















































typedef struct tagMCI_VD_PLAY_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrom;
    DWORD   dwTo;
    DWORD   dwSpeed;
} MCI_VD_PLAY_PARMS, *PMCI_VD_PLAY_PARMS,  *LPMCI_VD_PLAY_PARMS;


typedef struct tagMCI_VD_STEP_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrames;
} MCI_VD_STEP_PARMS, *PMCI_VD_STEP_PARMS,  *LPMCI_VD_STEP_PARMS;




typedef struct tagMCI_VD_ESCAPE_PARMSA {
    DWORD   dwCallback;
    LPCSTR      lpstrCommand;
} MCI_VD_ESCAPE_PARMSA, *PMCI_VD_ESCAPE_PARMSA, *LPMCI_VD_ESCAPE_PARMSA;
typedef struct tagMCI_VD_ESCAPE_PARMSW {
    DWORD   dwCallback;
    LPCWSTR     lpstrCommand;
} MCI_VD_ESCAPE_PARMSW, *PMCI_VD_ESCAPE_PARMSW, *LPMCI_VD_ESCAPE_PARMSW;

typedef MCI_VD_ESCAPE_PARMSW MCI_VD_ESCAPE_PARMS;
typedef PMCI_VD_ESCAPE_PARMSW PMCI_VD_ESCAPE_PARMS;
typedef LPMCI_VD_ESCAPE_PARMSW LPMCI_VD_ESCAPE_PARMS;




#line 3142 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 3149 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



















































typedef struct tagMCI_WAVE_OPEN_PARMSA {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwBufferSeconds;
} MCI_WAVE_OPEN_PARMSA, *PMCI_WAVE_OPEN_PARMSA, *LPMCI_WAVE_OPEN_PARMSA;
typedef struct tagMCI_WAVE_OPEN_PARMSW {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwBufferSeconds;
} MCI_WAVE_OPEN_PARMSW, *PMCI_WAVE_OPEN_PARMSW, *LPMCI_WAVE_OPEN_PARMSW;

typedef MCI_WAVE_OPEN_PARMSW MCI_WAVE_OPEN_PARMS;
typedef PMCI_WAVE_OPEN_PARMSW PMCI_WAVE_OPEN_PARMS;
typedef LPMCI_WAVE_OPEN_PARMSW LPMCI_WAVE_OPEN_PARMS;




#line 3225 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"











#line 3237 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_WAVE_DELETE_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrom;
    DWORD   dwTo;
} MCI_WAVE_DELETE_PARMS, *PMCI_WAVE_DELETE_PARMS,  *LPMCI_WAVE_DELETE_PARMS;


typedef struct tagMCI_WAVE_SET_PARMS {
    DWORD   dwCallback;
    DWORD   dwTimeFormat;
    DWORD   dwAudio;

    UINT    wInput;
    UINT    wOutput;





#line 3259 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
    WORD    wFormatTag;
    WORD    wReserved2;
    WORD    nChannels;
    WORD    wReserved3;
    DWORD   nSamplesPerSec;
    DWORD   nAvgBytesPerSec;
    WORD    nBlockAlign;
    WORD    wReserved4;
    WORD    wBitsPerSample;
    WORD    wReserved5;
} MCI_WAVE_SET_PARMS, *PMCI_WAVE_SET_PARMS,  * LPMCI_WAVE_SET_PARMS;






































typedef struct tagMCI_SEQ_SET_PARMS {
    DWORD   dwCallback;
    DWORD   dwTimeFormat;
    DWORD   dwAudio;
    DWORD   dwTempo;
    DWORD   dwPort;
    DWORD   dwSlave;
    DWORD   dwMaster;
    DWORD   dwOffset;
} MCI_SEQ_SET_PARMS, *PMCI_SEQ_SET_PARMS,  * LPMCI_SEQ_SET_PARMS;




































































typedef struct tagMCI_ANIM_OPEN_PARMSA {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_ANIM_OPEN_PARMSA, *PMCI_ANIM_OPEN_PARMSA, *LPMCI_ANIM_OPEN_PARMSA;
typedef struct tagMCI_ANIM_OPEN_PARMSW {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_ANIM_OPEN_PARMSW, *PMCI_ANIM_OPEN_PARMSW, *LPMCI_ANIM_OPEN_PARMSW;

typedef MCI_ANIM_OPEN_PARMSW MCI_ANIM_OPEN_PARMS;
typedef PMCI_ANIM_OPEN_PARMSW PMCI_ANIM_OPEN_PARMS;
typedef LPMCI_ANIM_OPEN_PARMSW LPMCI_ANIM_OPEN_PARMS;




#line 3413 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"













#line 3427 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_ANIM_PLAY_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrom;
    DWORD   dwTo;
    DWORD   dwSpeed;
} MCI_ANIM_PLAY_PARMS, *PMCI_ANIM_PLAY_PARMS,  *LPMCI_ANIM_PLAY_PARMS;


typedef struct tagMCI_ANIM_STEP_PARMS {
    DWORD   dwCallback;
    DWORD   dwFrames;
} MCI_ANIM_STEP_PARMS, *PMCI_ANIM_STEP_PARMS,  *LPMCI_ANIM_STEP_PARMS;




typedef struct tagMCI_ANIM_WINDOW_PARMSA {
    DWORD   dwCallback;
    HWND    hWnd;
    UINT    nCmdShow;
    LPCSTR     lpstrText;
} MCI_ANIM_WINDOW_PARMSA, *PMCI_ANIM_WINDOW_PARMSA, * LPMCI_ANIM_WINDOW_PARMSA;
typedef struct tagMCI_ANIM_WINDOW_PARMSW {
    DWORD   dwCallback;
    HWND    hWnd;
    UINT    nCmdShow;
    LPCWSTR    lpstrText;
} MCI_ANIM_WINDOW_PARMSW, *PMCI_ANIM_WINDOW_PARMSW, * LPMCI_ANIM_WINDOW_PARMSW;

typedef MCI_ANIM_WINDOW_PARMSW MCI_ANIM_WINDOW_PARMS;
typedef PMCI_ANIM_WINDOW_PARMSW PMCI_ANIM_WINDOW_PARMS;
typedef LPMCI_ANIM_WINDOW_PARMSW LPMCI_ANIM_WINDOW_PARMS;




#line 3466 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"










#line 3477 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_ANIM_RECT_PARMS {
    DWORD   dwCallback;




    RECT    rc;
#line 3487 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MCI_ANIM_RECT_PARMS;
typedef MCI_ANIM_RECT_PARMS * PMCI_ANIM_RECT_PARMS;
typedef MCI_ANIM_RECT_PARMS  * LPMCI_ANIM_RECT_PARMS;


typedef struct tagMCI_ANIM_UPDATE_PARMS {
    DWORD   dwCallback;
    RECT    rc;
    HDC     hDC;
} MCI_ANIM_UPDATE_PARMS, *PMCI_ANIM_UPDATE_PARMS,  * LPMCI_ANIM_UPDATE_PARMS;













































typedef struct tagMCI_OVLY_OPEN_PARMSA {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_OVLY_OPEN_PARMSA, *PMCI_OVLY_OPEN_PARMSA, *LPMCI_OVLY_OPEN_PARMSA;
typedef struct tagMCI_OVLY_OPEN_PARMSW {
    DWORD   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_OVLY_OPEN_PARMSW, *PMCI_OVLY_OPEN_PARMSW, *LPMCI_OVLY_OPEN_PARMSW;

typedef MCI_OVLY_OPEN_PARMSW MCI_OVLY_OPEN_PARMS;
typedef PMCI_OVLY_OPEN_PARMSW PMCI_OVLY_OPEN_PARMS;
typedef LPMCI_OVLY_OPEN_PARMSW LPMCI_OVLY_OPEN_PARMS;




#line 3569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"













#line 3583 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




typedef struct tagMCI_OVLY_WINDOW_PARMSA {
    DWORD   dwCallback;
    HWND    hWnd;
    UINT    nCmdShow;
    LPCSTR      lpstrText;
} MCI_OVLY_WINDOW_PARMSA, *PMCI_OVLY_WINDOW_PARMSA, * LPMCI_OVLY_WINDOW_PARMSA;
typedef struct tagMCI_OVLY_WINDOW_PARMSW {
    DWORD   dwCallback;
    HWND    hWnd;
    UINT    nCmdShow;
    LPCWSTR     lpstrText;
} MCI_OVLY_WINDOW_PARMSW, *PMCI_OVLY_WINDOW_PARMSW, * LPMCI_OVLY_WINDOW_PARMSW;

typedef MCI_OVLY_WINDOW_PARMSW MCI_OVLY_WINDOW_PARMS;
typedef PMCI_OVLY_WINDOW_PARMSW PMCI_OVLY_WINDOW_PARMS;
typedef LPMCI_OVLY_WINDOW_PARMSW LPMCI_OVLY_WINDOW_PARMS;




#line 3608 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"









#line 3618 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


typedef struct tagMCI_OVLY_RECT_PARMS {
    DWORD   dwCallback;




    RECT    rc;
#line 3628 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
} MCI_OVLY_RECT_PARMS, *PMCI_OVLY_RECT_PARMS,  * LPMCI_OVLY_RECT_PARMS;




typedef struct tagMCI_OVLY_SAVE_PARMSA {
    DWORD   dwCallback;
    LPCSTR      lpfilename;
    RECT    rc;
} MCI_OVLY_SAVE_PARMSA, *PMCI_OVLY_SAVE_PARMSA, * LPMCI_OVLY_SAVE_PARMSA;
typedef struct tagMCI_OVLY_SAVE_PARMSW {
    DWORD   dwCallback;
    LPCWSTR     lpfilename;
    RECT    rc;
} MCI_OVLY_SAVE_PARMSW, *PMCI_OVLY_SAVE_PARMSW, * LPMCI_OVLY_SAVE_PARMSW;

typedef MCI_OVLY_SAVE_PARMSW MCI_OVLY_SAVE_PARMS;
typedef PMCI_OVLY_SAVE_PARMSW PMCI_OVLY_SAVE_PARMS;
typedef LPMCI_OVLY_SAVE_PARMSW LPMCI_OVLY_SAVE_PARMS;




#line 3652 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 3659 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




typedef struct tagMCI_OVLY_LOAD_PARMSA {
    DWORD   dwCallback;
    LPCSTR      lpfilename;
    RECT    rc;
} MCI_OVLY_LOAD_PARMSA, *PMCI_OVLY_LOAD_PARMSA, * LPMCI_OVLY_LOAD_PARMSA;
typedef struct tagMCI_OVLY_LOAD_PARMSW {
    DWORD   dwCallback;
    LPCWSTR     lpfilename;
    RECT    rc;
} MCI_OVLY_LOAD_PARMSW, *PMCI_OVLY_LOAD_PARMSW, * LPMCI_OVLY_LOAD_PARMSW;

typedef MCI_OVLY_LOAD_PARMSW MCI_OVLY_LOAD_PARMS;
typedef PMCI_OVLY_LOAD_PARMSW PMCI_OVLY_LOAD_PARMS;
typedef LPMCI_OVLY_LOAD_PARMSW LPMCI_OVLY_LOAD_PARMS;




#line 3682 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"






#line 3689 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 3691 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 3692 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"








    

    
#line 3704 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"



























}                       
#line 3733 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 3736 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"




#line 3741 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"

#line 3743 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\mmsystem.h"
#line 193 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\nb30.h"



















extern "C" {
#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\nb30.h"














typedef struct _NCB {
    UCHAR   ncb_command;            
    UCHAR   ncb_retcode;            
    UCHAR   ncb_lsn;                
    UCHAR   ncb_num;                
    PUCHAR  ncb_buffer;             
    WORD    ncb_length;             
    UCHAR   ncb_callname[16]; 
    UCHAR   ncb_name[16];     
    UCHAR   ncb_rto;                
    UCHAR   ncb_sto;                
    void (__stdcall *ncb_post)( struct _NCB * ); 
    UCHAR   ncb_lana_num;           
    UCHAR   ncb_cmd_cplt;           
    UCHAR   ncb_reserve[10];        
    HANDLE  ncb_event;              
                                    
                                    
                                    
} NCB, *PNCB;






typedef struct _ADAPTER_STATUS {
    UCHAR   adapter_address[6];
    UCHAR   rev_major;
    UCHAR   reserved0;
    UCHAR   adapter_type;
    UCHAR   rev_minor;
    WORD    duration;
    WORD    frmr_recv;
    WORD    frmr_xmit;

    WORD    iframe_recv_err;

    WORD    xmit_aborts;
    DWORD   xmit_success;
    DWORD   recv_success;

    WORD    iframe_xmit_err;

    WORD    recv_buff_unavail;
    WORD    t1_timeouts;
    WORD    ti_timeouts;
    DWORD   reserved1;
    WORD    free_ncbs;
    WORD    max_cfg_ncbs;
    WORD    max_ncbs;
    WORD    xmit_buf_unavail;
    WORD    max_dgram_size;
    WORD    pending_sess;
    WORD    max_cfg_sess;
    WORD    max_sess;
    WORD    max_sess_pkt_size;
    WORD    name_count;
} ADAPTER_STATUS, *PADAPTER_STATUS;

typedef struct _NAME_BUFFER {
    UCHAR   name[16];
    UCHAR   name_num;
    UCHAR   name_flags;
} NAME_BUFFER, *PNAME_BUFFER;





















typedef struct _SESSION_HEADER {
    UCHAR   sess_name;
    UCHAR   num_sess;
    UCHAR   rcv_dg_outstanding;
    UCHAR   rcv_any_outstanding;
} SESSION_HEADER, *PSESSION_HEADER;

typedef struct _SESSION_BUFFER {
    UCHAR   lsn;
    UCHAR   state;
    UCHAR   local_name[16];
    UCHAR   remote_name[16];
    UCHAR   rcvs_outstanding;
    UCHAR   sends_outstanding;
} SESSION_BUFFER, *PSESSION_BUFFER;

















typedef struct _LANA_ENUM {
    UCHAR   length;         
    UCHAR   lana[254+1];
} LANA_ENUM, *PLANA_ENUM;






typedef struct _FIND_NAME_HEADER {
    WORD    node_count;
    UCHAR   reserved;
    UCHAR   unique_group;
} FIND_NAME_HEADER, *PFIND_NAME_HEADER;

typedef struct _FIND_NAME_BUFFER {
    UCHAR   length;
    UCHAR   access_control;
    UCHAR   frame_control;
    UCHAR   destination_addr[6];
    UCHAR   source_addr[6];
    UCHAR   routing_info[18];
} FIND_NAME_BUFFER, *PFIND_NAME_BUFFER;






typedef struct _ACTION_HEADER {
    ULONG   transport_id;
    USHORT  action_code;
    USHORT  reserved;
} ACTION_HEADER, *PACTION_HEADER;




















































                                















































UCHAR
__stdcall
Netbios(
    PNCB pncb
    );











}
#line 307 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\nb30.h"

#line 309 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\nb30.h"
#line 194 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





extern "C" {
#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"














#line 40 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"



#line 44 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"






#line 51 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"

typedef void * I_RPC_HANDLE;
typedef long RPC_STATUS;



#line 58 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"



















#line 78 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"








#line 87 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





#line 93 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





#line 99 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"



























#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


















extern "C" {
#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"









typedef I_RPC_HANDLE RPC_BINDING_HANDLE;
typedef RPC_BINDING_HANDLE handle_t;















typedef GUID UUID;


#line 51 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
#line 52 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

typedef struct _RPC_BINDING_VECTOR
{
    unsigned long Count;
    RPC_BINDING_HANDLE BindingH[1];
} RPC_BINDING_VECTOR;


#line 61 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

typedef struct _UUID_VECTOR
{
  unsigned long Count;
  UUID *Uuid[1];
} UUID_VECTOR;


#line 70 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

typedef void  * RPC_IF_HANDLE;



typedef struct _RPC_IF_ID
{
    UUID Uuid;
    unsigned short VersMajor;
    unsigned short VersMinor;
} RPC_IF_ID;
#line 82 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"














































typedef struct _RPC_PROTSEQ_VECTORA
{
    unsigned int Count;
    unsigned char  * Protseq[1];
} RPC_PROTSEQ_VECTORA;

typedef struct _RPC_PROTSEQ_VECTORW
{
    unsigned int Count;
    unsigned short  * Protseq[1];
} RPC_PROTSEQ_VECTORW;





#line 145 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"









#line 155 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
typedef struct _RPC_POLICY {
    unsigned int Length ;
    unsigned long EndpointFlags ;
    unsigned long NICFlags ;
    } RPC_POLICY,   *PRPC_POLICY ;

typedef void __stdcall
RPC_OBJECT_INQ_FN (
     UUID  * ObjectUuid,
     UUID  * TypeUuid,
     RPC_STATUS  * Status
    );

typedef RPC_STATUS __stdcall
RPC_IF_CALLBACK_FN (
     RPC_IF_HANDLE  InterfaceUuid,
     void *Context
    ) ;



typedef struct
{
    unsigned int Count;
    unsigned long Stats[1];
} RPC_STATS_VECTOR;






typedef struct
{
  unsigned long Count;
  RPC_IF_ID  * IfId[1];
} RPC_IF_ID_VECTOR;


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingCopy (
     RPC_BINDING_HANDLE SourceBinding,
     RPC_BINDING_HANDLE  * DestinationBinding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFree (
      RPC_BINDING_HANDLE  * Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetOption(  RPC_BINDING_HANDLE hBinding,
                      unsigned long      option,
                      unsigned long      optionValue );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqOption(   RPC_BINDING_HANDLE hBinding,
                       unsigned long      option,
                      unsigned long     *pOptionValue );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFromStringBindingA (
     unsigned char  * StringBinding,
     RPC_BINDING_HANDLE  * Binding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFromStringBindingW (
     unsigned short  * StringBinding,
     RPC_BINDING_HANDLE  * Binding
    );





#line 251 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"











#line 263 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqObject (
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingReset (
     RPC_BINDING_HANDLE Binding
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetObject (
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqDefaultProtectLevel(
      unsigned long AuthnSvc,
     unsigned long  *AuthnLevel
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingToStringBindingA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  *  * StringBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingToStringBindingW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  *  * StringBinding
    );





#line 327 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"











#line 339 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingVectorFree (
      RPC_BINDING_VECTOR  *  * BindingVector
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingComposeA (
     unsigned char  * ObjUuid ,
     unsigned char  * Protseq ,
     unsigned char  * NetworkAddr ,
     unsigned char  * Endpoint ,
     unsigned char  * Options ,
     unsigned char  *  * StringBinding 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingComposeW (
     unsigned short  * ObjUuid ,
     unsigned short  * Protseq ,
     unsigned short  * NetworkAddr ,
     unsigned short  * Endpoint ,
     unsigned short  * Options ,
     unsigned short  *  * StringBinding 
    );





#line 381 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"















#line 397 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingParseA (
     unsigned char  * StringBinding,
     unsigned char  *  * ObjUuid ,
     unsigned char  *  * Protseq ,
     unsigned char  *  * NetworkAddr ,
     unsigned char  *  * Endpoint ,
     unsigned char  *  * NetworkOptions 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingParseW (
     unsigned short  * StringBinding,
     unsigned short  *  * ObjUuid ,
     unsigned short  *  * Protseq ,
     unsigned short  *  * NetworkAddr ,
     unsigned short  *  * Endpoint ,
     unsigned short  *  * NetworkOptions 
    );





#line 431 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"















#line 447 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringFreeA (
      unsigned char  *  * String
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringFreeW (
      unsigned short  *  * String
    );





#line 471 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"










#line 482 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcIfInqId (
     RPC_IF_HANDLE RpcIfHandle,
     RPC_IF_ID  * RpcIfId
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkIsProtseqValidA (
     unsigned char  * Protseq
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkIsProtseqValidW (
     unsigned short  * Protseq
    );





#line 515 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"










#line 526 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqComTimeout (
     RPC_BINDING_HANDLE Binding,
     unsigned int  * Timeout
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetComTimeout (
     RPC_BINDING_HANDLE Binding,
     unsigned int Timeout
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetCancelTimeout(
    long Timeout
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkInqProtseqsA (
     RPC_PROTSEQ_VECTORA  *  * ProtseqVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkInqProtseqsW (
     RPC_PROTSEQ_VECTORW  *  * ProtseqVector
    );





#line 577 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"










#line 588 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectInqType (
     UUID  * ObjUuid,
     UUID  * TypeUuid 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectSetInqFn (
     RPC_OBJECT_INQ_FN  * InquiryFn
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectSetType (
     UUID  * ObjUuid,
     UUID  * TypeUuid 
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcProtseqVectorFreeA (
      RPC_PROTSEQ_VECTORA  *  * ProtseqVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcProtseqVectorFreeW (
      RPC_PROTSEQ_VECTORW  *  * ProtseqVector
    );





#line 638 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"










#line 649 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqBindings (
     RPC_BINDING_VECTOR  *  * BindingVector
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid, 
     void  *  * MgrEpv
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerListen (
     unsigned int MinimumCallThreads,
     unsigned int MaxCalls,
     unsigned int DontWait
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid ,
     void  * MgrEpv 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterIfEx (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid,
     void  * MgrEpv,
     unsigned int Flags,
     unsigned int MaxCalls,
     RPC_IF_CALLBACK_FN  *IfCallback
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUnregisterIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid, 
     unsigned int WaitForCallsToComplete
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqs (
     unsigned int MaxCalls,
     void  * SecurityDescriptor 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsEx (
     unsigned int MaxCalls,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsIf (
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsIfEx (
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqExA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqExW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );







#line 801 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"






















#line 824 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     unsigned char  * Endpoint,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpExA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     unsigned char  * Endpoint,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     unsigned short  * Endpoint,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpExW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     unsigned short  * Endpoint,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );







#line 878 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
























#line 903 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfExA (
     unsigned char  * Protseq,
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfExW (
     unsigned short  * Protseq,
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );







#line 957 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
























#line 982 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtStatsVectorFree (
     RPC_STATS_VECTOR ** StatsVector
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqStats (
     RPC_BINDING_HANDLE Binding,
     RPC_STATS_VECTOR ** Statistics
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtIsServerListening (
     RPC_BINDING_HANDLE Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtStopServerListening (
     RPC_BINDING_HANDLE Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtWaitServerListen (
    void
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetServerStackSize (
     unsigned long ThreadStackSize
    );


__declspec(dllimport)
void
__stdcall
RpcSsDontSerializeContext (
    void
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEnableIdleCleanup (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqIfIds (
     RPC_BINDING_HANDLE Binding,
     RPC_IF_ID_VECTOR  *  * IfIdVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcIfIdVectorFree (
      RPC_IF_ID_VECTOR  *  * IfIdVector
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqServerPrincNameA (
     RPC_BINDING_HANDLE Binding,
     unsigned long AuthnSvc,
     unsigned char  *  * ServerPrincName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqServerPrincNameW (
     RPC_BINDING_HANDLE Binding,
     unsigned long AuthnSvc,
     unsigned short  *  * ServerPrincName
    );





#line 1088 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"












#line 1101 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqDefaultPrincNameA (
     unsigned long AuthnSvc,
     unsigned char  *  * PrincName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqDefaultPrincNameW (
     unsigned long AuthnSvc,
     unsigned short  *  * PrincName
    );





#line 1125 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"











#line 1137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpResolveBinding (
     RPC_BINDING_HANDLE Binding,
     RPC_IF_HANDLE IfSpec
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNsBindingInqEntryNameA (
     RPC_BINDING_HANDLE Binding,
     unsigned long EntryNameSyntax,
     unsigned char  *  * EntryName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNsBindingInqEntryNameW (
     RPC_BINDING_HANDLE Binding,
     unsigned long EntryNameSyntax,
     unsigned short  *  * EntryName
    );





#line 1174 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"












#line 1187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

typedef void  * RPC_AUTH_IDENTITY_HANDLE;
typedef void  * RPC_AUTHZ_HANDLE;









































typedef struct _RPC_SECURITY_QOS {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
} RPC_SECURITY_QOS, *PRPC_SECURITY_QOS;








#line 1246 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





typedef struct _SEC_WINNT_AUTH_IDENTITY_W {
  unsigned short  *User;
  unsigned long UserLength;
  unsigned short  *Domain;
  unsigned long DomainLength;
  unsigned short  *Password;
  unsigned long PasswordLength;
  unsigned long Flags;
} SEC_WINNT_AUTH_IDENTITY_W, *PSEC_WINNT_AUTH_IDENTITY_W;

typedef struct _SEC_WINNT_AUTH_IDENTITY_A {
  unsigned char  *User;
  unsigned long UserLength;
  unsigned char  *Domain;
  unsigned long DomainLength;
  unsigned char  *Password;
  unsigned long PasswordLength;
  unsigned long Flags;
} SEC_WINNT_AUTH_IDENTITY_A, *PSEC_WINNT_AUTH_IDENTITY_A;










#line 1281 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
#line 1282 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"







__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientA (
     RPC_BINDING_HANDLE ClientBinding, 
     RPC_AUTHZ_HANDLE  * Privs,
     unsigned char  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     unsigned long  * AuthzSvc 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientW (
     RPC_BINDING_HANDLE ClientBinding, 
     RPC_AUTHZ_HANDLE  * Privs,
     unsigned short  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     unsigned long  * AuthzSvc 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     RPC_AUTH_IDENTITY_HANDLE  * AuthIdentity, 
     unsigned long  * AuthzSvc 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     RPC_AUTH_IDENTITY_HANDLE  * AuthIdentity, 
     unsigned long  * AuthzSvc 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  * ServerPrincName,
     unsigned long AuthnLevel,
     unsigned long AuthnSvc,
     RPC_AUTH_IDENTITY_HANDLE AuthIdentity, 
     unsigned long AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoExA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  * ServerPrincName,
     unsigned long AuthnLevel,
     unsigned long AuthnSvc,
     RPC_AUTH_IDENTITY_HANDLE AuthIdentity, 
     unsigned long AuthzSvc,
     RPC_SECURITY_QOS *SecurityQos 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  * ServerPrincName,
     unsigned long AuthnLevel,
     unsigned long AuthnSvc,
     RPC_AUTH_IDENTITY_HANDLE AuthIdentity, 
     unsigned long AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoExW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  * ServerPrincName,
     unsigned long AuthnLevel,
     unsigned long AuthnSvc,
     RPC_AUTH_IDENTITY_HANDLE AuthIdentity, 
     unsigned long AuthzSvc, 
     RPC_SECURITY_QOS *SecurityQOS
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoExA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     RPC_AUTH_IDENTITY_HANDLE  * AuthIdentity, 
     unsigned long  * AuthzSvc, 
      unsigned long RpcQosVersion,
     RPC_SECURITY_QOS *SecurityQOS
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoExW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  *  * ServerPrincName, 
     unsigned long  * AuthnLevel, 
     unsigned long  * AuthnSvc, 
     RPC_AUTH_IDENTITY_HANDLE  * AuthIdentity, 
     unsigned long  * AuthzSvc ,
      unsigned long RpcQosVersion,
     RPC_SECURITY_QOS *SecurityQOS
    );

typedef void
(__stdcall * RPC_AUTH_KEY_RETRIEVAL_FN) (
     void  * Arg,
     unsigned short  * ServerPrincName,
     unsigned long KeyVer,
     void  *  * Key,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterAuthInfoA (
     unsigned char  * ServerPrincName,
     unsigned long AuthnSvc,
     RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn ,
     void  * Arg 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterAuthInfoW (
     unsigned short  * ServerPrincName,
     unsigned long AuthnSvc,
     RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn ,
     void  * Arg 
    );















#line 1459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


























































#line 1518 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

typedef struct {
    unsigned char  * UserName;
    unsigned char  * ComputerName;
    unsigned short Privilege;
    unsigned long AuthFlags;
} RPC_CLIENT_INFORMATION1,  * PRPC_CLIENT_INFORMATION1;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingServerFromClient (
     RPC_BINDING_HANDLE ClientBinding,
     RPC_BINDING_HANDLE  * ServerBinding
    );

__declspec(dllimport)
void
__stdcall
RpcRaiseException (
     RPC_STATUS exception
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcTestCancel(
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerTestCancel (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcCancelThread(
     void * Thread
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidCreate (
     UUID  * Uuid
    );




__declspec(dllimport)
RPC_STATUS
__stdcall
UuidToStringA (
     UUID  * Uuid,
     unsigned char  *  * StringUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidFromStringA (
     unsigned char  * StringUuid,
     UUID  * Uuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidToStringW (
     UUID  * Uuid,
     unsigned short  *  * StringUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidFromStringW (
     unsigned short  * StringUuid,
     UUID  * Uuid
    );







#line 1614 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"





















#line 1636 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

__declspec(dllimport)
signed int
__stdcall
UuidCompare (
     UUID  * Uuid1,
     UUID  * Uuid2,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
UuidCreateNil (
     UUID  * NilUuid
    );

__declspec(dllimport)
int
__stdcall
UuidEqual (
     UUID  * Uuid1,
     UUID  * Uuid2,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
unsigned short
__stdcall
UuidHash (
     UUID  * Uuid,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
int
__stdcall
UuidIsNil (
     UUID  * Uuid,
     RPC_STATUS  * Status
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterNoReplaceA (
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR * BindingVector,
     UUID_VECTOR * UuidVector ,
     unsigned char * Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterNoReplaceW (
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR * BindingVector,
     UUID_VECTOR * UuidVector ,
     unsigned short  * Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterA (
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR * BindingVector,
     UUID_VECTOR * UuidVector ,
     unsigned char * Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterW (
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR * BindingVector,
     UUID_VECTOR * UuidVector ,
     unsigned short * Annotation
    );







#line 1727 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"























#line 1751 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpUnregister(
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR * BindingVector,
     UUID_VECTOR * UuidVector
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
DceErrorInqTextA (
     RPC_STATUS RpcStatus,
     unsigned char  * ErrorText
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
DceErrorInqTextW (
     RPC_STATUS RpcStatus,
     unsigned short  * ErrorText
    );





#line 1785 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"











#line 1797 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"



typedef I_RPC_HANDLE * RPC_EP_INQ_HANDLE;












__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqBegin (
     RPC_BINDING_HANDLE EpBinding ,
     unsigned long InquiryType,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption ,
     UUID  * ObjectUuid ,
     RPC_EP_INQ_HANDLE  * InquiryContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqDone (
      RPC_EP_INQ_HANDLE  * InquiryContext
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqNextA (
     RPC_EP_INQ_HANDLE InquiryContext,
     RPC_IF_ID  * IfId,
     RPC_BINDING_HANDLE  * Binding ,
     UUID  * ObjectUuid ,
     unsigned char  *  * Annotation 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqNextW (
     RPC_EP_INQ_HANDLE InquiryContext,
     RPC_IF_ID  * IfId,
     RPC_BINDING_HANDLE  * Binding ,
     UUID  * ObjectUuid ,
     unsigned short  *  * Annotation 
    );





#line 1861 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"













#line 1875 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpUnregister (
     RPC_BINDING_HANDLE EpBinding ,
     RPC_IF_ID  * IfId,
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid 
    );

typedef int
(__stdcall * RPC_MGMT_AUTHORIZATION_FN) (
     RPC_BINDING_HANDLE ClientBinding,
     unsigned long RequestedMgmtOperation,
     RPC_STATUS  * Status
    );







__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetAuthorizationFn (
     RPC_MGMT_AUTHORIZATION_FN AuthorizationFn
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqParameter (
     unsigned Parameter,
     unsigned long  * Value
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetParameter (
     unsigned Parameter,
     unsigned long Value
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtBindingInqParameter (
     RPC_BINDING_HANDLE Handle,
     unsigned Parameter,
     unsigned long  * Value
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtBindingSetParameter (
     RPC_BINDING_HANDLE Handle,
     unsigned Parameter,
     unsigned long Value
    );




#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"























#line 25 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"


extern "C" {
#line 29 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"

typedef struct _RPC_VERSION {
    unsigned short MajorVersion;
    unsigned short MinorVersion;
} RPC_VERSION;

typedef struct _RPC_SYNTAX_IDENTIFIER {
    GUID SyntaxGUID;
    RPC_VERSION SyntaxVersion;
} RPC_SYNTAX_IDENTIFIER,  * PRPC_SYNTAX_IDENTIFIER;

typedef struct _RPC_MESSAGE
{
    RPC_BINDING_HANDLE Handle;
    unsigned long DataRepresentation;
    void  * Buffer;
    unsigned int BufferLength;
    unsigned int ProcNum;
    PRPC_SYNTAX_IDENTIFIER TransferSyntax;
    void  * RpcInterfaceInformation;
    void  * ReservedForRuntime;
    void  * ManagerEpv;
    void  * ImportContext;
    unsigned long RpcFlags;
} RPC_MESSAGE,  * PRPC_MESSAGE;


typedef RPC_STATUS
__stdcall RPC_FORWARD_FUNCTION(
                        UUID              * InterfaceId,
                        RPC_VERSION       * InterfaceVersion,
                        UUID              * ObjectId,
                        unsigned char          * Rpcpro,
                        void  *  * ppDestEndpoint);


























#line 90 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"



#line 94 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"

typedef
void
(__stdcall  * RPC_DISPATCH_FUNCTION) (
      PRPC_MESSAGE Message
    );

typedef struct {
    unsigned int DispatchTableCount;
    RPC_DISPATCH_FUNCTION  * DispatchTable;
    int Reserved;
} RPC_DISPATCH_TABLE,  * PRPC_DISPATCH_TABLE;

typedef struct _RPC_PROTSEQ_ENDPOINT
{
    unsigned char  * RpcProtocolSequence;
    unsigned char  * Endpoint;
} RPC_PROTSEQ_ENDPOINT,  * PRPC_PROTSEQ_ENDPOINT;








typedef struct _RPC_SERVER_INTERFACE
{
    unsigned int Length;
    RPC_SYNTAX_IDENTIFIER InterfaceId;
    RPC_SYNTAX_IDENTIFIER TransferSyntax;
    PRPC_DISPATCH_TABLE DispatchTable;
    unsigned int RpcProtseqEndpointCount;
    PRPC_PROTSEQ_ENDPOINT RpcProtseqEndpoint;
    void  *DefaultManagerEpv;
    void const  *InterpreterInfo;
    unsigned int Flags ;
} RPC_SERVER_INTERFACE,  * PRPC_SERVER_INTERFACE;

typedef struct _RPC_CLIENT_INTERFACE
{
    unsigned int Length;
    RPC_SYNTAX_IDENTIFIER InterfaceId;
    RPC_SYNTAX_IDENTIFIER TransferSyntax;
    PRPC_DISPATCH_TABLE DispatchTable;
    unsigned int RpcProtseqEndpointCount;
    PRPC_PROTSEQ_ENDPOINT RpcProtseqEndpoint;
    unsigned long Reserved;
    void const  * InterpreterInfo;
    unsigned int Flags ;
} RPC_CLIENT_INTERFACE,  * PRPC_CLIENT_INTERFACE;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetBuffer (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSendReceive (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcFreeBuffer (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSend (
      PRPC_MESSAGE Message
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReceive (
      PRPC_MESSAGE Message,
     unsigned int Size
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcFreePipeBuffer (
      RPC_MESSAGE  * Message
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReallocPipeBuffer (
     PRPC_MESSAGE Message,
     unsigned int NewSize
    ) ;

typedef void * I_RPC_MUTEX;

__declspec(dllimport)
void
__stdcall
I_RpcRequestMutex (
      I_RPC_MUTEX * Mutex
    );

__declspec(dllimport)
void
__stdcall
I_RpcClearMutex (
     I_RPC_MUTEX Mutex
    );

__declspec(dllimport)
void
__stdcall
I_RpcDeleteMutex (
     I_RPC_MUTEX Mutex
    );

__declspec(dllimport)
void  *
__stdcall
I_RpcAllocate (
     unsigned int Size
    );

__declspec(dllimport)
void
__stdcall
I_RpcFree (
     void  * Object
    );

__declspec(dllimport)
void
__stdcall
I_RpcPauseExecution (
     unsigned long Milliseconds
    );

typedef
void
(__stdcall  * PRPC_RUNDOWN) (
    void  * AssociationContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcMonitorAssociation (
     RPC_BINDING_HANDLE Handle,
     PRPC_RUNDOWN RundownRoutine,
     void * Context
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcStopMonitorAssociation (
     RPC_BINDING_HANDLE Handle
    );

__declspec(dllimport)
RPC_BINDING_HANDLE
__stdcall
I_RpcGetCurrentCallHandle(
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetAssociationContext (
     RPC_BINDING_HANDLE BindingHandle,
     void  *  * AssociationContext
    );

__declspec(dllimport)
void *
__stdcall
I_RpcGetServerContextList (
     RPC_BINDING_HANDLE BindingHandle
    );

__declspec(dllimport)
void
__stdcall
I_RpcSetServerContextList (
     RPC_BINDING_HANDLE BindingHandle,
     void * ServerContextList
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsBindingSetEntryNameW (
     RPC_BINDING_HANDLE Binding,
     unsigned long EntryNameSyntax,
     unsigned short  * EntryName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsBindingSetEntryNameA (
     RPC_BINDING_HANDLE Binding,
     unsigned long EntryNameSyntax,
     unsigned char  * EntryName
    );





#line 318 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"












#line 331 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"



__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqDynamicEndpointW (
     RPC_BINDING_HANDLE Binding,
     unsigned short  *  * DynamicEndpoint
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqDynamicEndpointA (
     RPC_BINDING_HANDLE Binding,
     unsigned char  *  * DynamicEndpoint
    );





#line 355 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"











#line 367 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"






__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqTransportType (
     RPC_BINDING_HANDLE Binding,
     unsigned int  * Type
    );

typedef struct _RPC_TRANSFER_SYNTAX
{
    UUID Uuid;
    unsigned short VersMajor;
    unsigned short VersMinor;
} RPC_TRANSFER_SYNTAX;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcIfInqTransferSyntaxes (
     RPC_IF_HANDLE RpcIfHandle,
     RPC_TRANSFER_SYNTAX  * TransferSyntaxes,
     unsigned int TransferSyntaxSize,
     unsigned int  * TransferSyntaxCount
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_UuidCreate (
     UUID  * Uuid
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingCopy (
     RPC_BINDING_HANDLE SourceBinding,
     RPC_BINDING_HANDLE  * DestinationBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingIsClientLocal (
     RPC_BINDING_HANDLE BindingHandle ,
     unsigned int  * ClientLocalFlag
    );

__declspec(dllimport)
void
__stdcall
I_RpcSsDontSerializeContext (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcLaunchDatagramReceiveThread(
    void  * pAddress
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerRegisterForwardFunction (
     RPC_FORWARD_FUNCTION  * pForwardFunction
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcConnectionInqSockBuffSize(
   unsigned long  * RecvBuffSize,
   unsigned long  * SendBuffSize
  );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcConnectionSetSockBuffSize(
    unsigned long RecvBuffSize,
    unsigned long SendBuffSize
   );


































































__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerStartListening(
    void * hWnd
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerStopListening(
    ) ;

typedef RPC_STATUS (*RPC_BLOCKING_FN) (
     void * hWnd,
     void * Context,
      void * hSyncEvent
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingSetAsync(
     RPC_BINDING_HANDLE Binding,
     RPC_BLOCKING_FN BlockingFn,
     unsigned long ServerTid
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSetThreadParams(
     int fClientFree,
      void *Context,
      void * hWndClient
    );

__declspec(dllimport)
unsigned int
__stdcall
I_RpcWindowProc(
     void * hWnd,
     unsigned int Message,
     unsigned int wParam,
     unsigned long lParam
    ) ;
#line 571 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"


__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUnregisterEndpointA (
     unsigned char * Protseq,
     unsigned char * Endpoint
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUnregisterEndpointW (
     unsigned short * Protseq,
     unsigned short * Endpoint
    );





#line 594 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"
#line 595 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerInqTransportType(
     unsigned int  * Type
    ) ;


}
#line 606 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"





#line 612 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"

#line 614 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdcep.h"
#line 1948 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"


}
#line 1952 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"

#line 1954 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcdce.h"
#line 133 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"


















typedef void  * RPC_NS_HANDLE;















__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingExportA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     RPC_IF_HANDLE IfSpec ,
     RPC_BINDING_VECTOR  * BindingVec ,
     UUID_VECTOR  * ObjectUuidVec 
    );


__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingUnexportA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     RPC_IF_HANDLE IfSpec ,
     UUID_VECTOR  * ObjectUuidVec 
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingExportW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     RPC_IF_HANDLE IfSpec ,
     RPC_BINDING_VECTOR  * BindingVec ,
     UUID_VECTOR  * ObjectUuidVec 
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingUnexportW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     RPC_IF_HANDLE IfSpec ,
     UUID_VECTOR  * ObjectUuidVec 
    );

#line 73 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupBeginA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName ,
     RPC_IF_HANDLE IfSpec ,
     UUID  * ObjUuid ,
     unsigned long BindingMaxCount ,
     RPC_NS_HANDLE  * LookupContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupBeginW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName ,
     RPC_IF_HANDLE IfSpec ,
     UUID  * ObjUuid ,
     unsigned long BindingMaxCount ,
     RPC_NS_HANDLE  * LookupContext
    );
#line 98 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupNext(
      RPC_NS_HANDLE LookupContext,
     RPC_BINDING_VECTOR  *  * BindingVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupDone(
      RPC_NS_HANDLE  * LookupContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupDeleteA(
     unsigned long GroupNameSyntax ,
     unsigned char  * GroupName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrAddA(
     unsigned long GroupNameSyntax ,
     unsigned char  * GroupName,
     unsigned long MemberNameSyntax ,
     unsigned char  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrRemoveA(
     unsigned long GroupNameSyntax ,
     unsigned char  * GroupName,
     unsigned long MemberNameSyntax ,
     unsigned char  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqBeginA(
     unsigned long GroupNameSyntax ,
     unsigned char  * GroupName,
     unsigned long MemberNameSyntax ,
     RPC_NS_HANDLE  * InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqNextA(
      RPC_NS_HANDLE InquiryContext,
     unsigned char  *  * MemberName
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupDeleteW(
     unsigned long GroupNameSyntax ,
     unsigned short  * GroupName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrAddW(
     unsigned long GroupNameSyntax ,
     unsigned short  * GroupName,
     unsigned long MemberNameSyntax ,
     unsigned short  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrRemoveW(
     unsigned long GroupNameSyntax ,
     unsigned short  * GroupName,
     unsigned long MemberNameSyntax ,
     unsigned short  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqBeginW(
     unsigned long GroupNameSyntax ,
     unsigned short  * GroupName,
     unsigned long MemberNameSyntax ,
     RPC_NS_HANDLE  * InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqNextW(
      RPC_NS_HANDLE InquiryContext,
     unsigned short  *  * MemberName
    );

#line 187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileDeleteA(
     unsigned long ProfileNameSyntax ,
     unsigned char  * ProfileName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltAddA(
     unsigned long ProfileNameSyntax ,
     unsigned char  * ProfileName,
     RPC_IF_ID  * IfId ,
     unsigned long MemberNameSyntax ,
     unsigned char  * MemberName,
     unsigned long Priority,
     unsigned char  * Annotation 
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltRemoveA(
     unsigned long ProfileNameSyntax ,
     unsigned char  * ProfileName,
     RPC_IF_ID  * IfId ,
     unsigned long MemberNameSyntax ,
     unsigned char  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqBeginA(
     unsigned long ProfileNameSyntax ,
     unsigned char  * ProfileName,
     unsigned long InquiryType,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption,
     unsigned long MemberNameSyntax ,
     unsigned char  * MemberName ,
     RPC_NS_HANDLE  * InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqNextA(
     RPC_NS_HANDLE InquiryContext,
     RPC_IF_ID  * IfId,
     unsigned char  *  * MemberName,
     unsigned long  * Priority,
     unsigned char  *  * Annotation
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileDeleteW(
     unsigned long ProfileNameSyntax ,
     unsigned short  * ProfileName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltAddW(
     unsigned long ProfileNameSyntax ,
     unsigned short  * ProfileName,
     RPC_IF_ID  * IfId ,
     unsigned long MemberNameSyntax ,
     unsigned short  * MemberName,
     unsigned long Priority,
     unsigned short  * Annotation 
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltRemoveW(
     unsigned long ProfileNameSyntax ,
     unsigned short  * ProfileName,
     RPC_IF_ID  * IfId ,
     unsigned long MemberNameSyntax ,
     unsigned short  * MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqBeginW(
     unsigned long ProfileNameSyntax ,
     unsigned short  * ProfileName,
     unsigned long InquiryType,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption,
     unsigned long MemberNameSyntax ,
     unsigned short  * MemberName ,
     RPC_NS_HANDLE  * InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqNextW(
     RPC_NS_HANDLE InquiryContext,
     RPC_IF_ID  * IfId,
     unsigned short  *  * MemberName,
     unsigned long  * Priority,
     unsigned short  *  * Annotation
    );

#line 292 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqBeginA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqBeginW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     RPC_NS_HANDLE  * InquiryContext
    );

#line 317 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqNext(
      RPC_NS_HANDLE InquiryContext,
     UUID  * ObjUuid
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryExpandNameA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     unsigned char  *  * ExpandedName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtBindingUnexportA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption,
     UUID_VECTOR  * ObjectUuidVec 
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryCreateA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryDeleteA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryInqIfIdsA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName,
     RPC_IF_ID_VECTOR  *  * IfIdVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtHandleSetExpAge(
     RPC_NS_HANDLE NsHandle,
     unsigned long ExpirationAge
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtInqExpAge(
     unsigned long  * ExpirationAge
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtSetExpAge(
     unsigned long ExpirationAge
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryExpandNameW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     unsigned short  *  * ExpandedName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtBindingUnexportW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption,
     UUID_VECTOR  * ObjectUuidVec 
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryCreateW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryDeleteW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryInqIfIdsW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName,
     RPC_IF_ID_VECTOR  *  * IfIdVec
    );

#line 420 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportBeginA(
     unsigned long EntryNameSyntax ,
     unsigned char  * EntryName ,
     RPC_IF_HANDLE IfSpec ,
     UUID  * ObjUuid ,
     RPC_NS_HANDLE  * ImportContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportBeginW(
     unsigned long EntryNameSyntax ,
     unsigned short  * EntryName ,
     RPC_IF_HANDLE IfSpec ,
     UUID  * ObjUuid ,
     RPC_NS_HANDLE  * ImportContext
    );

#line 444 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportNext(
     RPC_NS_HANDLE ImportContext,
     RPC_BINDING_HANDLE   * Binding
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportDone(
      RPC_NS_HANDLE  * ImportContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingSelect(
      RPC_BINDING_VECTOR  * BindingVec,
     RPC_BINDING_HANDLE   * Binding
    );















































#line 509 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"

#line 511 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsi.h"
#line 134 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnterr.h"



































#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnterr.h"
#line 135 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"








































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"




































__declspec(dllimport)
RPC_STATUS
__stdcall
RpcImpersonateClient (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcRevertToSelfEx (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcRevertToSelf (
    );

__declspec(dllimport)
long
__stdcall
I_RpcMapWin32Status (
     RPC_STATUS Status
    );

#line 201 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"




#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcasync.h"



















extern "C" {
#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcasync.h"



typedef
enum _RPC_NOTIFICATION_TYPES
{
    RpcNotificationTypeNone,
    RpcNotificationTypeEvent,
    RpcNotificationTypeApc, 
    RpcNotificationTypeIoc,
    RpcNotificationTypeHwnd,
    RpcNotificationTypeCallback
} RPC_NOTIFICATION_TYPES;

typedef
enum _RPC_ASYNC_EVENT {
    RpcCallComplete,
    RpcSendComplete,
    RpcReceiveComplete
    } RPC_ASYNC_EVENT;

typedef void __stdcall
RPCNOTIFICATION_ROUTINE (
                  struct _RPC_ASYNC_STATE *pAsync,
                  void *Context,                              
                  RPC_ASYNC_EVENT Event);
typedef RPCNOTIFICATION_ROUTINE *PFN_RPCNOTIFICATION_ROUTINE;
    
typedef struct _RPC_ASYNC_STATE {
    unsigned int    Size; 
    unsigned long   Signature;
    long   Lock;
    unsigned long   Flags;
    void           *StubInfo;
    void           *UserInfo;
    void           *RuntimeInfo;
    RPC_ASYNC_EVENT Event;

    RPC_NOTIFICATION_TYPES NotificationType;
    union {
        
        
        
        struct {
            PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
            HANDLE hThread;
            } APC;

        
        
        
        struct {
            HANDLE hIOPort;
            DWORD dwNumberOfBytesTransferred;
            DWORD dwCompletionKey;
            LPOVERLAPPED lpOverlapped;
            } IOC;

        
        
        
        struct {
            HWND hWnd;
            UINT Msg;
            } HWND;


        
        
        
        HANDLE hEvent;

        
        
        
        
        
        PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
        } u;

    long Reserved[4]; 
    } RPC_ASYNC_STATE, *PRPC_ASYNC_STATE;







__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncInitializeHandle (
    PRPC_ASYNC_STATE pAsync,
    unsigned int     Size
    );
                      
__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncRegisterInfo (
    PRPC_ASYNC_STATE pAsync
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncGetCallStatus (
    PRPC_ASYNC_STATE pAsync
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncCompleteCall (
    PRPC_ASYNC_STATE pAsync,
    void *Reply
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncAbortCall (
    PRPC_ASYNC_STATE pAsync,
    unsigned long ExceptionCode
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncCancelCall (
     PRPC_ASYNC_STATE pAsync,
     BOOL fAbort
    ) ;




RPC_STATUS __stdcall
I_RpcAsyncSetHandle (
      PRPC_MESSAGE Message,
      PRPC_ASYNC_STATE pAsync
    );

RPC_STATUS __stdcall
I_RpcAsyncAbortCall (
     PRPC_ASYNC_STATE pAsync,
     unsigned long ExceptionCode
    ) ;


}
#line 175 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcasync.h"

#line 177 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcasync.h"

#line 206 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"

#line 208 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"


}
#line 212 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"

#line 214 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"

#line 195 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 196 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"




















#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
#line 23 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"








#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"








#line 42 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
#line 43 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 46 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"


extern "C" {            
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"



struct HDROP__ { int unused; }; typedef struct HDROP__ *HDROP;

__declspec(dllimport) UINT __stdcall DragQueryFileA(HDROP,UINT,LPSTR,UINT);
__declspec(dllimport) UINT __stdcall DragQueryFileW(HDROP,UINT,LPWSTR,UINT);




#line 62 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) BOOL __stdcall DragQueryPoint(HDROP,LPPOINT);
__declspec(dllimport) void __stdcall DragFinish(HDROP);
__declspec(dllimport) void __stdcall DragAcceptFiles(HWND,BOOL);

__declspec(dllimport) HINSTANCE __stdcall ShellExecuteA(HWND hwnd, LPCSTR lpOperation, LPCSTR lpFile, LPCSTR lpParameters, LPCSTR lpDirectory, INT nShowCmd);
__declspec(dllimport) HINSTANCE __stdcall ShellExecuteW(HWND hwnd, LPCWSTR lpOperation, LPCWSTR lpFile, LPCWSTR lpParameters, LPCWSTR lpDirectory, INT nShowCmd);




#line 73 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) HINSTANCE __stdcall FindExecutableA(LPCSTR lpFile, LPCSTR lpDirectory, LPSTR lpResult);
__declspec(dllimport) HINSTANCE __stdcall FindExecutableW(LPCWSTR lpFile, LPCWSTR lpDirectory, LPWSTR lpResult);




#line 80 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) LPWSTR *  __stdcall CommandLineToArgvW(LPCWSTR lpCmdLine, int*pNumArgs);

__declspec(dllimport) INT       __stdcall ShellAboutA(HWND hWnd, LPCSTR szApp, LPCSTR szOtherStuff, HICON hIcon);
__declspec(dllimport) INT       __stdcall ShellAboutW(HWND hWnd, LPCWSTR szApp, LPCWSTR szOtherStuff, HICON hIcon);




#line 89 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) HICON     __stdcall DuplicateIcon(HINSTANCE hInst, HICON hIcon);
__declspec(dllimport) HICON     __stdcall ExtractAssociatedIconA(HINSTANCE hInst, LPSTR lpIconPath, LPWORD lpiIcon);
__declspec(dllimport) HICON     __stdcall ExtractAssociatedIconW(HINSTANCE hInst, LPWSTR lpIconPath, LPWORD lpiIcon);




#line 97 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

__declspec(dllimport) HICON     __stdcall ExtractIconA(HINSTANCE hInst, LPCSTR lpszExeFileName, UINT nIconIndex);
__declspec(dllimport) HICON     __stdcall ExtractIconW(HINSTANCE hInst, LPCWSTR lpszExeFileName, UINT nIconIndex);




#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"


typedef struct _DRAGINFOA {
    UINT uSize;                 
    POINT pt;
    BOOL fNC;
    LPSTR   lpFileList;
    DWORD grfKeyState;
} DRAGINFOA, * LPDRAGINFOA;
typedef struct _DRAGINFOW {
    UINT uSize;                 
    POINT pt;
    BOOL fNC;
    LPWSTR  lpFileList;
    DWORD grfKeyState;
} DRAGINFOW, * LPDRAGINFOW;

typedef DRAGINFOW DRAGINFO;
typedef LPDRAGINFOW LPDRAGINFO;



#line 128 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"














                                        
                                        


















typedef struct _AppBarData
{
    DWORD cbSize;
    HWND hWnd;
    UINT uCallbackMessage;
    UINT uEdge;
    RECT rc;
    LPARAM lParam; 
} APPBARDATA, *PAPPBARDATA;

__declspec(dllimport) UINT __stdcall SHAppBarMessage(DWORD dwMessage, PAPPBARDATA pData);






__declspec(dllimport) DWORD   __stdcall DoEnvironmentSubstA(LPSTR szString, UINT cbString);
__declspec(dllimport) DWORD   __stdcall DoEnvironmentSubstW(LPWSTR szString, UINT cbString);




#line 186 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) LPSTR __stdcall FindEnvironmentStringA(LPSTR szEnvVar);
__declspec(dllimport) LPWSTR __stdcall FindEnvironmentStringW(LPWSTR szEnvVar);




#line 193 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"


__declspec(dllimport) UINT __stdcall ExtractIconExA(LPCSTR lpszFile, int nIconIndex, HICON  *phiconLarge, HICON  *phiconSmall, UINT nIcons);
__declspec(dllimport) UINT __stdcall ExtractIconExW(LPCWSTR lpszFile, int nIconIndex, HICON  *phiconLarge, HICON  *phiconSmall, UINT nIcons);




#line 202 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"




















                                      







typedef WORD FILEOP_FLAGS;




                                
                                
                                
                                




typedef WORD PRINTEROP_FLAGS;

#line 246 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"








typedef struct _SHFILEOPSTRUCTA
{
        HWND            hwnd;
        UINT            wFunc;
        LPCSTR          pFrom;
        LPCSTR          pTo;
        FILEOP_FLAGS    fFlags;
        BOOL            fAnyOperationsAborted;
        LPVOID          hNameMappings;
        LPCSTR           lpszProgressTitle; 
} SHFILEOPSTRUCTA,  *LPSHFILEOPSTRUCTA;
typedef struct _SHFILEOPSTRUCTW
{
        HWND            hwnd;
        UINT            wFunc;
        LPCWSTR         pFrom;
        LPCWSTR         pTo;
        FILEOP_FLAGS    fFlags;
        BOOL            fAnyOperationsAborted;
        LPVOID          hNameMappings;
        LPCWSTR          lpszProgressTitle; 
} SHFILEOPSTRUCTW,  *LPSHFILEOPSTRUCTW;

typedef SHFILEOPSTRUCTW SHFILEOPSTRUCT;
typedef LPSHFILEOPSTRUCTW LPSHFILEOPSTRUCT;



#line 283 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

__declspec(dllimport) int __stdcall SHFileOperationA(LPSHFILEOPSTRUCTA lpFileOp);
__declspec(dllimport) int __stdcall SHFileOperationW(LPSHFILEOPSTRUCTW lpFileOp);




#line 291 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

__declspec(dllimport) void __stdcall SHFreeNameMappings(HANDLE hNameMappings);

typedef struct _SHNAMEMAPPINGA
{
    LPSTR   pszOldPath;
    LPSTR   pszNewPath;
    int   cchOldPath;
    int   cchNewPath;
} SHNAMEMAPPINGA,  *LPSHNAMEMAPPINGA;
typedef struct _SHNAMEMAPPINGW
{
    LPWSTR  pszOldPath;
    LPWSTR  pszNewPath;
    int   cchOldPath;
    int   cchNewPath;
} SHNAMEMAPPINGW,  *LPSHNAMEMAPPINGW;

typedef SHNAMEMAPPINGW SHNAMEMAPPING;
typedef LPSHNAMEMAPPINGW LPSHNAMEMAPPING;



#line 315 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"




















#line 336 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"




























typedef struct _SHELLEXECUTEINFOA
{
        DWORD cbSize;
        ULONG fMask;
        HWND hwnd;
        LPCSTR   lpVerb;
        LPCSTR   lpFile;
        LPCSTR   lpParameters;
        LPCSTR   lpDirectory;
        int nShow;
        HINSTANCE hInstApp;
        
        LPVOID lpIDList;
        LPCSTR   lpClass;
        HKEY hkeyClass;
        DWORD dwHotKey;
        union {
        HANDLE hIcon;
        HANDLE hMonitor;
        };
        HANDLE hProcess;
} SHELLEXECUTEINFOA,  *LPSHELLEXECUTEINFOA;

















typedef struct _SHELLEXECUTEINFOW
{
        DWORD cbSize;
        ULONG fMask;
        HWND hwnd;
        LPCWSTR  lpVerb;
        LPCWSTR  lpFile;
        LPCWSTR  lpParameters;
        LPCWSTR  lpDirectory;
        int nShow;
        HINSTANCE hInstApp;
        
        LPVOID lpIDList;
        LPCWSTR  lpClass;
        HKEY hkeyClass;
        DWORD dwHotKey;
        union {
        HANDLE hIcon;
        HANDLE hMonitor;
        };
        HANDLE hProcess;
} SHELLEXECUTEINFOW,  *LPSHELLEXECUTEINFOW;

typedef SHELLEXECUTEINFOW SHELLEXECUTEINFO;
typedef LPSHELLEXECUTEINFOW LPSHELLEXECUTEINFO;



#line 432 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

__declspec(dllimport) BOOL __stdcall ShellExecuteExA(LPSHELLEXECUTEINFOA lpExecInfo);
__declspec(dllimport) BOOL __stdcall ShellExecuteExW(LPSHELLEXECUTEINFOW lpExecInfo);




#line 440 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
__declspec(dllimport) void __stdcall WinExecErrorA(HWND hwnd, int error, LPCSTR lpstrFileName, LPCSTR lpstrTitle);
__declspec(dllimport) void __stdcall WinExecErrorW(HWND hwnd, int error, LPCWSTR lpstrFileName, LPCWSTR lpstrTitle);




#line 447 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"











typedef struct _SHQUERYRBINFO {
    DWORD   cbSize;

    __int64 i64Size;
    __int64 i64NumItems;



#line 467 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
} SHQUERYRBINFO,  *LPSHQUERYRBINFO;









extern "C" __declspec(dllimport) HRESULT __stdcall SHQueryRecycleBinA(LPCSTR pszRootPath, LPSHQUERYRBINFO pSHQueryRBInfo );
extern "C" __declspec(dllimport) HRESULT __stdcall SHQueryRecycleBinW(LPCWSTR pszRootPath, LPSHQUERYRBINFO pSHQueryRBInfo );




#line 484 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
extern "C" __declspec(dllimport) HRESULT __stdcall SHEmptyRecycleBinA(HWND hwnd, LPCSTR pszRootPath, DWORD dwFlags );
extern "C" __declspec(dllimport) HRESULT __stdcall SHEmptyRecycleBinW(HWND hwnd, LPCWSTR pszRootPath, DWORD dwFlags );




#line 491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"









typedef struct _NOTIFYICONDATAA {
        DWORD cbSize;
        HWND hWnd;
        UINT uID;
        UINT uFlags;
        UINT uCallbackMessage;
        HICON hIcon;
        CHAR   szTip[64];
} NOTIFYICONDATAA, *PNOTIFYICONDATAA;
typedef struct _NOTIFYICONDATAW {
        DWORD cbSize;
        HWND hWnd;
        UINT uID;
        UINT uFlags;
        UINT uCallbackMessage;
        HICON hIcon;
        WCHAR  szTip[64];
} NOTIFYICONDATAW, *PNOTIFYICONDATAW;

typedef NOTIFYICONDATAW NOTIFYICONDATA;
typedef PNOTIFYICONDATAW PNOTIFYICONDATA;



#line 525 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"










__declspec(dllimport) BOOL __stdcall Shell_NotifyIconA(DWORD dwMessage, PNOTIFYICONDATAA lpData);
__declspec(dllimport) BOOL __stdcall Shell_NotifyIconW(DWORD dwMessage, PNOTIFYICONDATAW lpData);




#line 542 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"



























typedef struct _SHFILEINFOA
{
        HICON       hIcon;                      
        int         iIcon;                      
        DWORD       dwAttributes;               
        CHAR        szDisplayName[260];    
        CHAR        szTypeName[80];             
} SHFILEINFOA;
typedef struct _SHFILEINFOW
{
        HICON       hIcon;                      
        int         iIcon;                      
        DWORD       dwAttributes;               
        WCHAR       szDisplayName[260];    
        WCHAR       szTypeName[80];             
} SHFILEINFOW;

typedef SHFILEINFOW SHFILEINFO;


#line 590 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"


















extern "C" __declspec(dllimport) DWORD __stdcall SHGetFileInfoA(LPCSTR pszPath, DWORD dwFileAttributes, SHFILEINFOA  *psfi, UINT cbFileInfo, UINT uFlags);
extern "C" __declspec(dllimport) DWORD __stdcall SHGetFileInfoW(LPCWSTR pszPath, DWORD dwFileAttributes, SHFILEINFOW  *psfi, UINT cbFileInfo, UINT uFlags);




#line 615 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
extern "C" __declspec(dllimport) BOOL __stdcall  SHGetDiskFreeSpaceA(LPCSTR pszVolume, ULARGE_INTEGER *pqwFreeCaller, ULARGE_INTEGER *pqwTot, ULARGE_INTEGER *pqwFree);
extern "C" __declspec(dllimport) BOOL __stdcall  SHGetDiskFreeSpaceW(LPCWSTR pszVolume, ULARGE_INTEGER *pqwFreeCaller, ULARGE_INTEGER *pqwTot, ULARGE_INTEGER *pqwFree);




#line 622 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"
extern "C" __declspec(dllimport) BOOL __stdcall  SHGetNewLinkInfoA(LPCSTR pszLinkTo, LPCSTR pszDir, LPSTR pszName, BOOL *pfMustCopy, UINT uFlags);
extern "C" __declspec(dllimport) BOOL __stdcall  SHGetNewLinkInfoW(LPCWSTR pszLinkTo, LPCWSTR pszDir, LPWSTR pszName, BOOL *pfMustCopy, UINT uFlags);




#line 629 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"






















extern "C" __declspec(dllimport) BOOL __stdcall  SHInvokePrinterCommandA(HWND hwnd, UINT uAction, LPCSTR lpBuf1, LPCSTR lpBuf2, BOOL fModal);
extern "C" __declspec(dllimport) BOOL __stdcall  SHInvokePrinterCommandW(HWND hwnd, UINT uAction, LPCWSTR lpBuf1, LPCWSTR lpBuf2, BOOL fModal);




#line 658 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"



#line 662 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"



}
#line 667 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 669 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

#line 671 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\shellapi.h"

#line 197 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winperf.h"



















































typedef struct _PERF_DATA_BLOCK {
    WCHAR           Signature[4];       
    DWORD           LittleEndian;       
    DWORD           Version;            
                                        
    DWORD           Revision;           
                                        
    DWORD           TotalByteLength;    
    DWORD           HeaderLength;       
    DWORD           NumObjectTypes;     
                                        
    LONG            DefaultObject;      
                                        
                                        
                                        
                                        
    SYSTEMTIME      SystemTime;         
                                        
    LARGE_INTEGER   PerfTime;           
                                        
    LARGE_INTEGER   PerfFreq;           
                                        
    LARGE_INTEGER   PerfTime100nSec;    
                                        
    DWORD           SystemNameLength;   
    DWORD           SystemNameOffset;   
                                        
                                        
} PERF_DATA_BLOCK, *PPERF_DATA_BLOCK;









typedef struct _PERF_OBJECT_TYPE {
    DWORD           TotalByteLength;    
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           DefinitionLength;   
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           HeaderLength;       
                                        
                                        
                                        
    DWORD           ObjectNameTitleIndex;
                                        
    LPWSTR          ObjectNameTitle;    
                                        
                                        
    DWORD           ObjectHelpTitleIndex;
                                        
    LPWSTR          ObjectHelpTitle;    
                                        
                                        
    DWORD           DetailLevel;        
                                        
                                        
                                        
    DWORD           NumCounters;        
                                        
                                        
    LONG            DefaultCounter;     
                                        
                                        
                                        
    LONG            NumInstances;       
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           CodePage;           
                                        
                                        
    LARGE_INTEGER   PerfTime;           
                                        
    LARGE_INTEGER   PerfFreq;           
                                        
} PERF_OBJECT_TYPE, *PPERF_OBJECT_TYPE;


























                                            




























































































































































































































































                                        
































typedef struct _PERF_COUNTER_DEFINITION {
    DWORD           ByteLength;         
    DWORD           CounterNameTitleIndex;
                                        
                                        
    LPWSTR          CounterNameTitle;   
                                        
                                        
    DWORD           CounterHelpTitleIndex;
                                        
                                        
    LPWSTR          CounterHelpTitle;   
                                        
                                        
    LONG            DefaultScale;       
                                        
                                        
    DWORD           DetailLevel;        
                                        
    DWORD           CounterType;        
    DWORD           CounterSize;        
    DWORD           CounterOffset;      
                                        
                                        
} PERF_COUNTER_DEFINITION, *PPERF_COUNTER_DEFINITION;














typedef struct _PERF_INSTANCE_DEFINITION {
    DWORD           ByteLength;         
                                        
    DWORD           ParentObjectTitleIndex;
                                        
                                        
                                        
                                        
                                        
    DWORD           ParentObjectInstance;
                                        
                                        
                                        
    LONG            UniqueID;           
                                        
                                        
    DWORD           NameOffset;         
                                        
                                        
    DWORD           NameLength;         
                                        
                                        
                                        
                                        
                                        
} PERF_INSTANCE_DEFINITION, *PPERF_INSTANCE_DEFINITION;













typedef struct _PERF_COUNTER_BLOCK {
    DWORD           ByteLength;         
                                        
} PERF_COUNTER_BLOCK, *PPERF_COUNTER_BLOCK;
















typedef DWORD (__stdcall PM_OPEN_PROC) (LPWSTR);
typedef DWORD (__stdcall PM_COLLECT_PROC) (LPWSTR, LPVOID *, LPDWORD, LPDWORD);
typedef DWORD (__stdcall PM_CLOSE_PROC) (void);
typedef DWORD (__stdcall PM_QUERY_PROC) (LPDWORD, LPVOID *, LPDWORD, LPDWORD);


#line 569 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winperf.h"



#line 199 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"




#line 204 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"

























typedef unsigned char   u_char;
typedef unsigned short  u_short;
typedef unsigned int    u_int;
typedef unsigned long   u_long;





typedef u_int           SOCKET;











#line 48 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"

typedef struct fd_set {
        u_int   fd_count;               
        SOCKET  fd_array[64];   
} fd_set;


extern "C" {
#line 57 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"

extern int __stdcall  __WSAFDIsSet(SOCKET, fd_set  *);


}
#line 63 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"





























struct timeval {
        long    tv_sec;         
        long    tv_usec;        
};



























                                        
























struct  hostent {
        char     * h_name;           
        char     *  * h_aliases;  
        short   h_addrtype;             
        short   h_length;               
        char     *  * h_addr_list; 

};





struct  netent {
        char     * n_name;           
        char     *  * n_aliases;  
        short   n_addrtype;             
        u_long  n_net;                  
};

struct  servent {
        char     * s_name;           
        char     *  * s_aliases;  
        short   s_port;                 
        char     * s_proto;          
};

struct  protoent {
        char     * p_name;           
        char     *  * p_aliases;  
        short   p_proto;                
};





























































                                        

















struct in_addr {
        union {
                struct { u_char s_b1,s_b2,s_b3,s_b4; } S_un_b;
                struct { u_short s_w1,s_w2; } S_un_w;
                u_long S_addr;
        } S_un;

                                

                                

                                

                                

                                

                                
};































struct sockaddr_in {
        short   sin_family;
        u_short sin_port;
        struct  in_addr sin_addr;
        char    sin_zero[8];
};




typedef struct WSAData {
        WORD                    wVersion;
        WORD                    wHighVersion;
        char                    szDescription[256+1];
        char                    szSystemStatus[128+1];
        unsigned short          iMaxSockets;
        unsigned short          iMaxUdpDg;
        char  *              lpVendorInfo;
} WSADATA;

typedef WSADATA  *LPWSADATA;






















struct ip_mreq {
        struct in_addr  imr_multiaddr;  
        struct in_addr  imr_interface;  
};






















































































































struct sockaddr {
        u_short sa_family;              
        char    sa_data[14];            
};





struct sockproto {
        u_short sp_family;              
        u_short sp_protocol;            
};

































struct  linger {
        u_short l_onoff;                
        u_short l_linger;               
};















































































































































































#line 700 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"




extern "C" {
#line 706 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"

SOCKET __stdcall  accept (SOCKET s, struct sockaddr  *addr,
                          int  *addrlen);

int __stdcall  bind (SOCKET s, const struct sockaddr  *addr, int namelen);

int __stdcall  closesocket (SOCKET s);

int __stdcall  connect (SOCKET s, const struct sockaddr  *name, int namelen);

int __stdcall  ioctlsocket (SOCKET s, long cmd, u_long  *argp);

int __stdcall  getpeername (SOCKET s, struct sockaddr  *name,
                            int  * namelen);

int __stdcall  getsockname (SOCKET s, struct sockaddr  *name,
                            int  * namelen);

int __stdcall  getsockopt (SOCKET s, int level, int optname,
                           char  * optval, int  *optlen);

u_long __stdcall  htonl (u_long hostlong);

u_short __stdcall  htons (u_short hostshort);

unsigned long __stdcall  inet_addr (const char  * cp);

char  * __stdcall  inet_ntoa (struct in_addr in);

int __stdcall  listen (SOCKET s, int backlog);

u_long __stdcall  ntohl (u_long netlong);

u_short __stdcall  ntohs (u_short netshort);

int __stdcall  recv (SOCKET s, char  * buf, int len, int flags);

int __stdcall  recvfrom (SOCKET s, char  * buf, int len, int flags,
                         struct sockaddr  *from, int  * fromlen);

int __stdcall  select (int nfds, fd_set  *readfds, fd_set  *writefds,
                       fd_set  *exceptfds, const struct timeval  *timeout);

int __stdcall  send (SOCKET s, const char  * buf, int len, int flags);

int __stdcall  sendto (SOCKET s, const char  * buf, int len, int flags,
                       const struct sockaddr  *to, int tolen);

int __stdcall  setsockopt (SOCKET s, int level, int optname,
                           const char  * optval, int optlen);

int __stdcall  shutdown (SOCKET s, int how);

SOCKET __stdcall  socket (int af, int type, int protocol);



struct hostent  * __stdcall  gethostbyaddr(const char  * addr,
                                              int len, int type);

struct hostent  * __stdcall  gethostbyname(const char  * name);

int __stdcall  gethostname (char  * name, int namelen);

struct servent  * __stdcall  getservbyport(int port, const char  * proto);

struct servent  * __stdcall  getservbyname(const char  * name,
                                              const char  * proto);

struct protoent  * __stdcall  getprotobynumber(int proto);

struct protoent  * __stdcall  getprotobyname(const char  * name);



int __stdcall  WSAStartup(WORD wVersionRequired, LPWSADATA lpWSAData);

int __stdcall  WSACleanup(void);

void __stdcall  WSASetLastError(int iError);

int __stdcall  WSAGetLastError(void);

BOOL __stdcall  WSAIsBlocking(void);

int __stdcall  WSAUnhookBlockingHook(void);

FARPROC __stdcall  WSASetBlockingHook(FARPROC lpBlockFunc);

int __stdcall  WSACancelBlockingCall(void);

HANDLE __stdcall  WSAAsyncGetServByName(HWND hWnd, u_int wMsg,
                                        const char  * name,
                                        const char  * proto,
                                        char  * buf, int buflen);

HANDLE __stdcall  WSAAsyncGetServByPort(HWND hWnd, u_int wMsg, int port,
                                        const char  * proto, char  * buf,
                                        int buflen);

HANDLE __stdcall  WSAAsyncGetProtoByName(HWND hWnd, u_int wMsg,
                                         const char  * name, char  * buf,
                                         int buflen);

HANDLE __stdcall  WSAAsyncGetProtoByNumber(HWND hWnd, u_int wMsg,
                                           int number, char  * buf,
                                           int buflen);

HANDLE __stdcall  WSAAsyncGetHostByName(HWND hWnd, u_int wMsg,
                                        const char  * name, char  * buf,
                                        int buflen);

HANDLE __stdcall  WSAAsyncGetHostByAddr(HWND hWnd, u_int wMsg,
                                        const char  * addr, int len, int type,
                                        char  * buf, int buflen);

int __stdcall  WSACancelAsyncRequest(HANDLE hAsyncTaskHandle);

int __stdcall  WSAAsyncSelect(SOCKET s, HWND hWnd, u_int wMsg,
                               long lEvent);

int __stdcall  WSARecvEx (SOCKET s, char  * buf, int len, int  *flags);

typedef struct _TRANSMIT_FILE_BUFFERS {
    PVOID Head;
    DWORD HeadLength;
    PVOID Tail;
    DWORD TailLength;
} TRANSMIT_FILE_BUFFERS, *PTRANSMIT_FILE_BUFFERS, *LPTRANSMIT_FILE_BUFFERS;





BOOL
__stdcall 
TransmitFile (
     SOCKET hSocket,
     HANDLE hFile,
     DWORD nNumberOfBytesToWrite,
     DWORD nNumberOfBytesPerSend,
     LPOVERLAPPED lpOverlapped,
     LPTRANSMIT_FILE_BUFFERS lpTransmitBuffers,
     DWORD dwReserved
    );

BOOL
__stdcall 
AcceptEx (
     SOCKET sListenSocket,
     SOCKET sAcceptSocket,
     PVOID lpOutputBuffer,
     DWORD dwReceiveDataLength,
     DWORD dwLocalAddressLength,
     DWORD dwRemoteAddressLength,
     LPDWORD lpdwBytesReceived,
     LPOVERLAPPED lpOverlapped
    );

void
__stdcall 
GetAcceptExSockaddrs (
     PVOID lpOutputBuffer,
     DWORD dwReceiveDataLength,
     DWORD dwLocalAddressLength,
     DWORD dwRemoteAddressLength,
     struct sockaddr **LocalSockaddr,
     LPINT LocalSockaddrLength,
     struct sockaddr **RemoteSockaddr,
     LPINT RemoteSockaddrLength
    );


}
#line 881 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"


typedef struct sockaddr SOCKADDR;
typedef struct sockaddr *PSOCKADDR;
typedef struct sockaddr  *LPSOCKADDR;

typedef struct sockaddr_in SOCKADDR_IN;
typedef struct sockaddr_in *PSOCKADDR_IN;
typedef struct sockaddr_in  *LPSOCKADDR_IN;

typedef struct linger LINGER;
typedef struct linger *PLINGER;
typedef struct linger  *LPLINGER;

typedef struct in_addr IN_ADDR;
typedef struct in_addr *PIN_ADDR;
typedef struct in_addr  *LPIN_ADDR;

typedef struct fd_set FD_SET;
typedef struct fd_set *PFD_SET;
typedef struct fd_set  *LPFD_SET;

typedef struct hostent HOSTENT;
typedef struct hostent *PHOSTENT;
typedef struct hostent  *LPHOSTENT;

typedef struct servent SERVENT;
typedef struct servent *PSERVENT;
typedef struct servent  *LPSERVENT;

typedef struct protoent PROTOENT;
typedef struct protoent *PPROTOENT;
typedef struct protoent  *LPPROTOENT;

typedef struct timeval TIMEVAL;
typedef struct timeval *PTIMEVAL;
typedef struct timeval  *LPTIMEVAL;







































#line 958 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winsock.h"


#line 205 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 206 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 208 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincrypt.h"

















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 7891 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincrypt.h"


#line 7894 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wincrypt.h"
#line 210 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"
#line 211 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"











#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#pragma pack(1)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack1.h"
#line 13 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


extern "C" {            
#line 17 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"








#line 26 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"






#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
#line 34 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
















typedef UINT (__stdcall *LPOFNHOOKPROC) (HWND, UINT, WPARAM, LPARAM);


#line 55 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

typedef struct tagOFNA {
   DWORD        lStructSize;
   HWND         hwndOwner;
   HINSTANCE    hInstance;
   LPCSTR       lpstrFilter;
   LPSTR        lpstrCustomFilter;
   DWORD        nMaxCustFilter;
   DWORD        nFilterIndex;
   LPSTR        lpstrFile;
   DWORD        nMaxFile;
   LPSTR        lpstrFileTitle;
   DWORD        nMaxFileTitle;
   LPCSTR       lpstrInitialDir;
   LPCSTR       lpstrTitle;
   DWORD        Flags;
   WORD         nFileOffset;
   WORD         nFileExtension;
   LPCSTR       lpstrDefExt;
   LPARAM       lCustData;
   LPOFNHOOKPROC lpfnHook;
   LPCSTR       lpTemplateName;




} OPENFILENAMEA, *LPOPENFILENAMEA;
typedef struct tagOFNW {
   DWORD        lStructSize;
   HWND         hwndOwner;
   HINSTANCE    hInstance;
   LPCWSTR      lpstrFilter;
   LPWSTR       lpstrCustomFilter;
   DWORD        nMaxCustFilter;
   DWORD        nFilterIndex;
   LPWSTR       lpstrFile;
   DWORD        nMaxFile;
   LPWSTR       lpstrFileTitle;
   DWORD        nMaxFileTitle;
   LPCWSTR      lpstrInitialDir;
   LPCWSTR      lpstrTitle;
   DWORD        Flags;
   WORD         nFileOffset;
   WORD         nFileExtension;
   LPCWSTR      lpstrDefExt;
   LPARAM       lCustData;
   LPOFNHOOKPROC lpfnHook;
   LPCWSTR      lpTemplateName;




} OPENFILENAMEW, *LPOPENFILENAMEW;

typedef OPENFILENAMEW OPENFILENAME;
typedef LPOPENFILENAMEW LPOPENFILENAME;



#line 115 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

BOOL  __stdcall     GetOpenFileNameA(LPOPENFILENAMEA);
BOOL  __stdcall     GetOpenFileNameW(LPOPENFILENAMEW);




#line 123 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
BOOL  __stdcall     GetSaveFileNameA(LPOPENFILENAMEA);
BOOL  __stdcall     GetSaveFileNameW(LPOPENFILENAMEW);




#line 130 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
short __stdcall     GetFileTitleA(LPCSTR, LPSTR, WORD);
short __stdcall     GetFileTitleW(LPCWSTR, LPWSTR, WORD);




#line 137 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


























#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
















typedef UINT (__stdcall *LPCCHOOKPROC) (HWND, UINT, WPARAM, LPARAM);


#line 184 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"



typedef struct _OFNOTIFYA
{
        NMHDR           hdr;
        LPOPENFILENAMEA lpOFN;
        LPSTR           pszFile;        
} OFNOTIFYA,  *LPOFNOTIFYA;

typedef struct _OFNOTIFYW
{
        NMHDR           hdr;
        LPOPENFILENAMEW lpOFN;
        LPWSTR          pszFile;        
} OFNOTIFYW,  *LPOFNOTIFYW;

typedef OFNOTIFYW OFNOTIFY;
typedef LPOFNOTIFYW LPOFNOTIFY;



#line 207 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"



typedef struct _OFNOTIFYEXA
{
        NMHDR           hdr;
        LPOPENFILENAMEA lpOFN;
        LPVOID          psf;
        LPVOID          pidl;          
} OFNOTIFYEXA,  *LPOFNOTIFYEXA;

typedef struct _OFNOTIFYEXW
{
        NMHDR           hdr;
        LPOPENFILENAMEW lpOFN;
        LPVOID          psf;
        LPVOID          pidl;          
} OFNOTIFYEXW,  *LPOFNOTIFYEXW;

typedef OFNOTIFYEXW OFNOTIFYEX;
typedef LPOFNOTIFYEXW LPOFNOTIFYEX;



#line 232 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
































#line 265 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"













#line 279 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"













#line 293 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"




























#line 322 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


typedef struct tagCHOOSECOLORA {
   DWORD        lStructSize;
   HWND         hwndOwner;
   HWND         hInstance;
   COLORREF     rgbResult;
   COLORREF*    lpCustColors;
   DWORD        Flags;
   LPARAM       lCustData;
   LPCCHOOKPROC lpfnHook;
   LPCSTR       lpTemplateName;
} CHOOSECOLORA, *LPCHOOSECOLORA;
typedef struct tagCHOOSECOLORW {
   DWORD        lStructSize;
   HWND         hwndOwner;
   HWND         hInstance;
   COLORREF     rgbResult;
   COLORREF*    lpCustColors;
   DWORD        Flags;
   LPARAM       lCustData;
   LPCCHOOKPROC lpfnHook;
   LPCWSTR      lpTemplateName;
} CHOOSECOLORW, *LPCHOOSECOLORW;

typedef CHOOSECOLORW CHOOSECOLOR;
typedef LPCHOOSECOLORW LPCHOOSECOLOR;



#line 353 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
































#line 386 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

BOOL  __stdcall ChooseColorA(LPCHOOSECOLORA);
BOOL  __stdcall ChooseColorW(LPCHOOSECOLORW);




#line 394 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"











#line 406 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


typedef UINT (__stdcall *LPFRHOOKPROC) (HWND, UINT, WPARAM, LPARAM);


#line 412 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

typedef struct tagFINDREPLACEA {
   DWORD        lStructSize;        
   HWND         hwndOwner;          
   HINSTANCE    hInstance;          
                                    
   DWORD        Flags;              
   LPSTR        lpstrFindWhat;      
   LPSTR        lpstrReplaceWith;   
   WORD         wFindWhatLen;       
   WORD         wReplaceWithLen;    
   LPARAM       lCustData;          
   LPFRHOOKPROC lpfnHook;           
   LPCSTR       lpTemplateName;     
} FINDREPLACEA, *LPFINDREPLACEA;
typedef struct tagFINDREPLACEW {
   DWORD        lStructSize;        
   HWND         hwndOwner;          
   HINSTANCE    hInstance;          
                                    
   DWORD        Flags;              
   LPWSTR       lpstrFindWhat;      
   LPWSTR       lpstrReplaceWith;   
   WORD         wFindWhatLen;       
   WORD         wReplaceWithLen;    
   LPARAM       lCustData;          
   LPFRHOOKPROC lpfnHook;           
   LPCWSTR      lpTemplateName;     
} FINDREPLACEW, *LPFINDREPLACEW;

typedef FINDREPLACEW FINDREPLACE;
typedef LPFINDREPLACEW LPFINDREPLACE;



#line 448 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"



















HWND  __stdcall    FindTextA(LPFINDREPLACEA);
HWND  __stdcall    FindTextW(LPFINDREPLACEW);




#line 474 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

HWND  __stdcall    ReplaceTextA(LPFINDREPLACEA);
HWND  __stdcall    ReplaceTextW(LPFINDREPLACEW);




#line 482 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"








#line 491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


typedef UINT (__stdcall *LPCFHOOKPROC) (HWND, UINT, WPARAM, LPARAM);


#line 497 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

typedef struct tagCHOOSEFONTA {
   DWORD           lStructSize;
   HWND            hwndOwner;          
   HDC             hDC;                
   LPLOGFONTA      lpLogFont;          
   INT             iPointSize;         
   DWORD           Flags;              
   COLORREF        rgbColors;          
   LPARAM          lCustData;          
   LPCFHOOKPROC    lpfnHook;           
   LPCSTR          lpTemplateName;     
   HINSTANCE       hInstance;          
                                       
   LPSTR           lpszStyle;          
                                       
   WORD            nFontType;          
                                       
                                       
   WORD            ___MISSING_ALIGNMENT__;
   INT             nSizeMin;           
   INT             nSizeMax;           
                                       
} CHOOSEFONTA, *LPCHOOSEFONTA;
typedef struct tagCHOOSEFONTW {
   DWORD           lStructSize;
   HWND            hwndOwner;          
   HDC             hDC;                
   LPLOGFONTW      lpLogFont;          
   INT             iPointSize;         
   DWORD           Flags;              
   COLORREF        rgbColors;          
   LPARAM          lCustData;          
   LPCFHOOKPROC    lpfnHook;           
   LPCWSTR         lpTemplateName;     
   HINSTANCE       hInstance;          
                                       
   LPWSTR          lpszStyle;          
                                       
   WORD            nFontType;          
                                       
                                       
   WORD            ___MISSING_ALIGNMENT__;
   INT             nSizeMin;           
   INT             nSizeMax;           
                                       
} CHOOSEFONTW, *LPCHOOSEFONTW;

typedef CHOOSEFONTW CHOOSEFONT;
typedef LPCHOOSEFONTW LPCHOOSEFONT;



#line 551 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

BOOL __stdcall ChooseFontA(LPCHOOSEFONTA);
BOOL __stdcall ChooseFontW(LPCHOOSEFONTW);




#line 559 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"















#line 575 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
















#line 592 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"






























































#line 655 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"








typedef UINT (__stdcall *LPPRINTHOOKPROC) (HWND, UINT, WPARAM, LPARAM);
typedef UINT (__stdcall *LPSETUPHOOKPROC) (HWND, UINT, WPARAM, LPARAM);



#line 669 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

typedef struct tagPDA {
   DWORD            lStructSize;
   HWND             hwndOwner;
   HGLOBAL          hDevMode;
   HGLOBAL          hDevNames;
   HDC              hDC;
   DWORD            Flags;
   WORD             nFromPage;
   WORD             nToPage;
   WORD             nMinPage;
   WORD             nMaxPage;
   WORD             nCopies;
   HINSTANCE        hInstance;
   LPARAM           lCustData;
   LPPRINTHOOKPROC  lpfnPrintHook;
   LPSETUPHOOKPROC  lpfnSetupHook;
   LPCSTR           lpPrintTemplateName;
   LPCSTR           lpSetupTemplateName;
   HGLOBAL          hPrintTemplate;
   HGLOBAL          hSetupTemplate;
} PRINTDLGA, *LPPRINTDLGA;
typedef struct tagPDW {
   DWORD            lStructSize;
   HWND             hwndOwner;
   HGLOBAL          hDevMode;
   HGLOBAL          hDevNames;
   HDC              hDC;
   DWORD            Flags;
   WORD             nFromPage;
   WORD             nToPage;
   WORD             nMinPage;
   WORD             nMaxPage;
   WORD             nCopies;
   HINSTANCE        hInstance;
   LPARAM           lCustData;
   LPPRINTHOOKPROC  lpfnPrintHook;
   LPSETUPHOOKPROC  lpfnSetupHook;
   LPCWSTR          lpPrintTemplateName;
   LPCWSTR          lpSetupTemplateName;
   HGLOBAL          hPrintTemplate;
   HGLOBAL          hSetupTemplate;
} PRINTDLGW, *LPPRINTDLGW;

typedef PRINTDLGW PRINTDLG;
typedef LPPRINTDLGW LPPRINTDLG;



#line 719 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

BOOL  __stdcall     PrintDlgA(LPPRINTDLGA);
BOOL  __stdcall     PrintDlgW(LPPRINTDLGW);




#line 727 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


























typedef struct tagDEVNAMES {
   WORD wDriverOffset;
   WORD wDeviceOffset;
   WORD wOutputOffset;
   WORD wDefault;
} DEVNAMES;

typedef DEVNAMES * LPDEVNAMES;




DWORD __stdcall     CommDlgExtendedError(void);










typedef UINT (__stdcall* LPPAGEPAINTHOOK)( HWND, UINT, WPARAM, LPARAM );
typedef UINT (__stdcall* LPPAGESETUPHOOK)( HWND, UINT, WPARAM, LPARAM );

typedef struct tagPSDA
{
    DWORD           lStructSize;
    HWND            hwndOwner;
    HGLOBAL         hDevMode;
    HGLOBAL         hDevNames;
    DWORD           Flags;
    POINT           ptPaperSize;
    RECT            rtMinMargin;
    RECT            rtMargin;
    HINSTANCE       hInstance;
    LPARAM          lCustData;
    LPPAGESETUPHOOK lpfnPageSetupHook;
    LPPAGEPAINTHOOK lpfnPagePaintHook;
    LPCSTR          lpPageSetupTemplateName;
    HGLOBAL         hPageSetupTemplate;
} PAGESETUPDLGA, * LPPAGESETUPDLGA;
typedef struct tagPSDW
{
    DWORD           lStructSize;
    HWND            hwndOwner;
    HGLOBAL         hDevMode;
    HGLOBAL         hDevNames;
    DWORD           Flags;
    POINT           ptPaperSize;
    RECT            rtMinMargin;
    RECT            rtMargin;
    HINSTANCE       hInstance;
    LPARAM          lCustData;
    LPPAGESETUPHOOK lpfnPageSetupHook;
    LPPAGEPAINTHOOK lpfnPagePaintHook;
    LPCWSTR         lpPageSetupTemplateName;
    HGLOBAL         hPageSetupTemplate;
} PAGESETUPDLGW, * LPPAGESETUPDLGW;

typedef PAGESETUPDLGW PAGESETUPDLG;
typedef LPPAGESETUPDLGW LPPAGESETUPDLG;



#line 820 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

BOOL __stdcall PageSetupDlgA( LPPAGESETUPDLGA );
BOOL __stdcall PageSetupDlgW( LPPAGESETUPDLGW );




#line 828 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"





















#line 850 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"


}
#line 854 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 856 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
#line 857 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\commdlg.h"
#line 214 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"




















extern "C" {
#line 23 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"




















#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"









#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"



#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"

















#line 55 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
#line 56 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"


extern "C" {
#line 60 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"




















struct _PSP;
typedef struct _PSP * HPROPSHEETPAGE;


struct _PROPSHEETPAGEA;
struct _PROPSHEETPAGEW;
#line 87 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"

typedef UINT (__stdcall  * LPFNPSPCALLBACKA)(HWND hwnd, UINT uMsg, struct _PROPSHEETPAGEA  *ppsp);
typedef UINT (__stdcall  * LPFNPSPCALLBACKW)(HWND hwnd, UINT uMsg, struct _PROPSHEETPAGEW  *ppsp);





#line 96 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"



















#line 116 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"








typedef struct _PROPSHEETPAGEA {
        DWORD           dwSize;
        DWORD           dwFlags;
        HINSTANCE       hInstance;
        union {
            LPCSTR          pszTemplate;

            LPCDLGTEMPLATE  pResource;


#line 135 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
        } ;
        union {
            HICON       hIcon;
            LPCSTR      pszIcon;
        } ;
        LPCSTR          pszTitle;
        DLGPROC         pfnDlgProc;
        LPARAM          lParam;
        LPFNPSPCALLBACKA pfnCallback;
        UINT  * pcRefParent;


        LPCSTR pszHeaderTitle;    
        LPCSTR pszHeaderSubTitle; 
#line 150 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
} PROPSHEETPAGEA,  *LPPROPSHEETPAGEA;
typedef const PROPSHEETPAGEA  *LPCPROPSHEETPAGEA;

typedef struct _PROPSHEETPAGEW {
        DWORD           dwSize;
        DWORD           dwFlags;
        HINSTANCE       hInstance;
        union {
            LPCWSTR          pszTemplate;

            LPCDLGTEMPLATE  pResource;


#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
        };
        union {
            HICON       hIcon;
            LPCWSTR      pszIcon;
        };
        LPCWSTR          pszTitle;
        DLGPROC         pfnDlgProc;
        LPARAM          lParam;
        LPFNPSPCALLBACKW pfnCallback;
        UINT  * pcRefParent;
        

        LPCWSTR pszHeaderTitle;    
        LPCWSTR pszHeaderSubTitle; 
#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
} PROPSHEETPAGEW,  *LPPROPSHEETPAGEW;
typedef const PROPSHEETPAGEW  *LPCPROPSHEETPAGEW;











#line 193 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"





























#line 223 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"


typedef int (__stdcall *PFNPROPSHEETCALLBACK)(HWND, UINT, LPARAM);




typedef struct _PROPSHEETHEADERA {
        DWORD           dwSize;
        DWORD           dwFlags;
        HWND            hwndParent;
        HINSTANCE       hInstance;
        union {
            HICON       hIcon;
            LPCSTR      pszIcon;
        };
        LPCSTR          pszCaption;

        UINT            nPages;
        union {
            UINT        nStartPage;
            LPCSTR      pStartPage;
        };
        union {
            LPCPROPSHEETPAGEA ppsp;
            HPROPSHEETPAGE  *phpage;
        };
        PFNPROPSHEETCALLBACK pfnCallback;


        union {
            HBITMAP hbmWatermark;
            LPCSTR pszbmWatermark;
        } ;
        HPALETTE hplWatermark;
        union {
            HBITMAP hbmHeader;     
            LPCSTR pszbmHeader;
        } ;
#line 263 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
} PROPSHEETHEADERA,  *LPPROPSHEETHEADERA;

typedef const PROPSHEETHEADERA  *LPCPROPSHEETHEADERA;

typedef struct _PROPSHEETHEADERW {
        DWORD           dwSize;
        DWORD           dwFlags;
        HWND            hwndParent;
        HINSTANCE       hInstance;
        union {
            HICON       hIcon;
            LPCWSTR     pszIcon;
        };
        LPCWSTR         pszCaption;


        UINT            nPages;
        union {
            UINT        nStartPage;
            LPCWSTR     pStartPage;
        };
        union {
            LPCPROPSHEETPAGEW ppsp;
            HPROPSHEETPAGE  *phpage;
        };
        PFNPROPSHEETCALLBACK pfnCallback;


        union {
            HBITMAP hbmWatermark;
            LPCWSTR pszbmWatermark;
        } ;
        HPALETTE hplWatermark;
        union {
            HBITMAP hbmHeader;
            LPCWSTR pszbmHeader;
        } ;
#line 301 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"
} PROPSHEETHEADERW,  *LPPROPSHEETHEADERW;
typedef const PROPSHEETHEADERW  *LPCPROPSHEETHEADERW;











#line 315 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"





__declspec(dllimport) HPROPSHEETPAGE __stdcall CreatePropertySheetPageA(LPCPROPSHEETPAGEA);
__declspec(dllimport) HPROPSHEETPAGE __stdcall CreatePropertySheetPageW(LPCPROPSHEETPAGEW);
__declspec(dllimport) BOOL           __stdcall DestroyPropertySheetPage(HPROPSHEETPAGE);
__declspec(dllimport) int            __stdcall PropertySheetA(LPCPROPSHEETHEADERA);
__declspec(dllimport) int            __stdcall PropertySheetW(LPCPROPSHEETHEADERW);







#line 333 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"



typedef BOOL (__stdcall  * LPFNADDPROPSHEETPAGE)(HPROPSHEETPAGE, LPARAM);
typedef BOOL (__stdcall  * LPFNADDPROPSHEETPAGES)(LPVOID, LPFNADDPROPSHEETPAGE, LPARAM);


typedef struct _PSHNOTIFY
{
    NMHDR hdr;
    LPARAM lParam;
} PSHNOTIFY,  *LPPSHNOTIFY;


















#line 364 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"































































#line 428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"












































#line 473 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"









































}
#line 516 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"


#line 519 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\prsht.h"

#line 26 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"
#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_INFO_1A {
    DWORD   Flags;
    LPSTR   pDescription;
    LPSTR   pName;
    LPSTR   pComment;
} PRINTER_INFO_1A, *PPRINTER_INFO_1A, *LPPRINTER_INFO_1A;
typedef struct _PRINTER_INFO_1W {
    DWORD   Flags;
    LPWSTR  pDescription;
    LPWSTR  pName;
    LPWSTR  pComment;
} PRINTER_INFO_1W, *PPRINTER_INFO_1W, *LPPRINTER_INFO_1W;

typedef PRINTER_INFO_1W PRINTER_INFO_1;
typedef PPRINTER_INFO_1W PPRINTER_INFO_1;
typedef LPPRINTER_INFO_1W LPPRINTER_INFO_1;




#line 49 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_INFO_2A {
    LPSTR     pServerName;
    LPSTR     pPrinterName;
    LPSTR     pShareName;
    LPSTR     pPortName;
    LPSTR     pDriverName;
    LPSTR     pComment;
    LPSTR     pLocation;
    LPDEVMODEA pDevMode;
    LPSTR     pSepFile;
    LPSTR     pPrintProcessor;
    LPSTR     pDatatype;
    LPSTR     pParameters;
    PSECURITY_DESCRIPTOR pSecurityDescriptor;
    DWORD   Attributes;
    DWORD   Priority;
    DWORD   DefaultPriority;
    DWORD   StartTime;
    DWORD   UntilTime;
    DWORD   Status;
    DWORD   cJobs;
    DWORD   AveragePPM;
} PRINTER_INFO_2A, *PPRINTER_INFO_2A, *LPPRINTER_INFO_2A;
typedef struct _PRINTER_INFO_2W {
    LPWSTR    pServerName;
    LPWSTR    pPrinterName;
    LPWSTR    pShareName;
    LPWSTR    pPortName;
    LPWSTR    pDriverName;
    LPWSTR    pComment;
    LPWSTR    pLocation;
    LPDEVMODEW pDevMode;
    LPWSTR    pSepFile;
    LPWSTR    pPrintProcessor;
    LPWSTR    pDatatype;
    LPWSTR    pParameters;
    PSECURITY_DESCRIPTOR pSecurityDescriptor;
    DWORD   Attributes;
    DWORD   Priority;
    DWORD   DefaultPriority;
    DWORD   StartTime;
    DWORD   UntilTime;
    DWORD   Status;
    DWORD   cJobs;
    DWORD   AveragePPM;
} PRINTER_INFO_2W, *PPRINTER_INFO_2W, *LPPRINTER_INFO_2W;

typedef PRINTER_INFO_2W PRINTER_INFO_2;
typedef PPRINTER_INFO_2W PPRINTER_INFO_2;
typedef LPPRINTER_INFO_2W LPPRINTER_INFO_2;




#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_INFO_3 {
    PSECURITY_DESCRIPTOR pSecurityDescriptor;
} PRINTER_INFO_3, *PPRINTER_INFO_3, *LPPRINTER_INFO_3;

typedef struct _PRINTER_INFO_4A {
    LPSTR   pPrinterName;
    LPSTR   pServerName;
    DWORD   Attributes;
} PRINTER_INFO_4A, *PPRINTER_INFO_4A, *LPPRINTER_INFO_4A;
typedef struct _PRINTER_INFO_4W {
    LPWSTR  pPrinterName;
    LPWSTR  pServerName;
    DWORD   Attributes;
} PRINTER_INFO_4W, *PPRINTER_INFO_4W, *LPPRINTER_INFO_4W;

typedef PRINTER_INFO_4W PRINTER_INFO_4;
typedef PPRINTER_INFO_4W PPRINTER_INFO_4;
typedef LPPRINTER_INFO_4W LPPRINTER_INFO_4;




#line 129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_INFO_5A {
    LPSTR   pPrinterName;
    LPSTR   pPortName;
    DWORD   Attributes;
    DWORD   DeviceNotSelectedTimeout;
    DWORD   TransmissionRetryTimeout;
} PRINTER_INFO_5A, *PPRINTER_INFO_5A, *LPPRINTER_INFO_5A;
typedef struct _PRINTER_INFO_5W {
    LPWSTR  pPrinterName;
    LPWSTR  pPortName;
    DWORD   Attributes;
    DWORD   DeviceNotSelectedTimeout;
    DWORD   TransmissionRetryTimeout;
} PRINTER_INFO_5W, *PPRINTER_INFO_5W, *LPPRINTER_INFO_5W;

typedef PRINTER_INFO_5W PRINTER_INFO_5;
typedef PPRINTER_INFO_5W PPRINTER_INFO_5;
typedef LPPRINTER_INFO_5W LPPRINTER_INFO_5;




#line 153 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_INFO_6 {
    DWORD   dwStatus;
} PRINTER_INFO_6, *PPRINTER_INFO_6, *LPPRINTER_INFO_6;


typedef struct _PRINTER_INFO_7A {
    LPSTR    pszObjectGUID;
    DWORD    dwAction;
} PRINTER_INFO_7A, *PPRINTER_INFO_7A, *LPPRINTER_INFO_7A;
typedef struct _PRINTER_INFO_7W {
    LPWSTR   pszObjectGUID;
    DWORD    dwAction;
} PRINTER_INFO_7W, *PPRINTER_INFO_7W, *LPPRINTER_INFO_7W;

typedef PRINTER_INFO_7W PRINTER_INFO_7;
typedef PPRINTER_INFO_7W PPRINTER_INFO_7;
typedef LPPRINTER_INFO_7W LPPRINTER_INFO_7;




#line 176 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"






























































typedef struct _JOB_INFO_1A {
   DWORD    JobId;
   LPSTR      pPrinterName;
   LPSTR      pMachineName;
   LPSTR      pUserName;
   LPSTR      pDocument;
   LPSTR      pDatatype;
   LPSTR      pStatus;
   DWORD    Status;
   DWORD    Priority;
   DWORD    Position;
   DWORD    TotalPages;
   DWORD    PagesPrinted;
   SYSTEMTIME Submitted;
} JOB_INFO_1A, *PJOB_INFO_1A, *LPJOB_INFO_1A;
typedef struct _JOB_INFO_1W {
   DWORD    JobId;
   LPWSTR     pPrinterName;
   LPWSTR     pMachineName;
   LPWSTR     pUserName;
   LPWSTR     pDocument;
   LPWSTR     pDatatype;
   LPWSTR     pStatus;
   DWORD    Status;
   DWORD    Priority;
   DWORD    Position;
   DWORD    TotalPages;
   DWORD    PagesPrinted;
   SYSTEMTIME Submitted;
} JOB_INFO_1W, *PJOB_INFO_1W, *LPJOB_INFO_1W;

typedef JOB_INFO_1W JOB_INFO_1;
typedef PJOB_INFO_1W PJOB_INFO_1;
typedef LPJOB_INFO_1W LPJOB_INFO_1;




#line 277 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _JOB_INFO_2A {
   DWORD    JobId;
   LPSTR      pPrinterName;
   LPSTR      pMachineName;
   LPSTR      pUserName;
   LPSTR      pDocument;
   LPSTR      pNotifyName;
   LPSTR      pDatatype;
   LPSTR      pPrintProcessor;
   LPSTR      pParameters;
   LPSTR      pDriverName;
   LPDEVMODEA pDevMode;
   LPSTR      pStatus;
   PSECURITY_DESCRIPTOR pSecurityDescriptor;
   DWORD    Status;
   DWORD    Priority;
   DWORD    Position;
   DWORD    StartTime;
   DWORD    UntilTime;
   DWORD    TotalPages;
   DWORD    Size;
   SYSTEMTIME Submitted;    
   DWORD    Time;           
   DWORD    PagesPrinted;
} JOB_INFO_2A, *PJOB_INFO_2A, *LPJOB_INFO_2A;
typedef struct _JOB_INFO_2W {
   DWORD    JobId;
   LPWSTR     pPrinterName;
   LPWSTR     pMachineName;
   LPWSTR     pUserName;
   LPWSTR     pDocument;
   LPWSTR     pNotifyName;
   LPWSTR     pDatatype;
   LPWSTR     pPrintProcessor;
   LPWSTR     pParameters;
   LPWSTR     pDriverName;
   LPDEVMODEW pDevMode;
   LPWSTR     pStatus;
   PSECURITY_DESCRIPTOR pSecurityDescriptor;
   DWORD    Status;
   DWORD    Priority;
   DWORD    Position;
   DWORD    StartTime;
   DWORD    UntilTime;
   DWORD    TotalPages;
   DWORD    Size;
   SYSTEMTIME Submitted;    
   DWORD    Time;           
   DWORD    PagesPrinted;
} JOB_INFO_2W, *PJOB_INFO_2W, *LPJOB_INFO_2W;

typedef JOB_INFO_2W JOB_INFO_2;
typedef PJOB_INFO_2W PJOB_INFO_2;
typedef LPJOB_INFO_2W LPJOB_INFO_2;




#line 337 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _JOB_INFO_3 {
    DWORD   JobId;
    DWORD   NextJobId;
    DWORD   Reserved;
} JOB_INFO_3, *PJOB_INFO_3, *LPJOB_INFO_3;
























typedef struct _ADDJOB_INFO_1A {
    LPSTR     Path;
    DWORD   JobId;
} ADDJOB_INFO_1A, *PADDJOB_INFO_1A, *LPADDJOB_INFO_1A;
typedef struct _ADDJOB_INFO_1W {
    LPWSTR    Path;
    DWORD   JobId;
} ADDJOB_INFO_1W, *PADDJOB_INFO_1W, *LPADDJOB_INFO_1W;

typedef ADDJOB_INFO_1W ADDJOB_INFO_1;
typedef PADDJOB_INFO_1W PADDJOB_INFO_1;
typedef LPADDJOB_INFO_1W LPADDJOB_INFO_1;




#line 384 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _DRIVER_INFO_1A {
    LPSTR     pName;              
} DRIVER_INFO_1A, *PDRIVER_INFO_1A, *LPDRIVER_INFO_1A;
typedef struct _DRIVER_INFO_1W {
    LPWSTR    pName;              
} DRIVER_INFO_1W, *PDRIVER_INFO_1W, *LPDRIVER_INFO_1W;

typedef DRIVER_INFO_1W DRIVER_INFO_1;
typedef PDRIVER_INFO_1W PDRIVER_INFO_1;
typedef LPDRIVER_INFO_1W LPDRIVER_INFO_1;




#line 400 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _DRIVER_INFO_2A {
    DWORD   cVersion;
    LPSTR     pName;              
    LPSTR     pEnvironment;       
    LPSTR     pDriverPath;        
    LPSTR     pDataFile;          
    LPSTR     pConfigFile;        
} DRIVER_INFO_2A, *PDRIVER_INFO_2A, *LPDRIVER_INFO_2A;
typedef struct _DRIVER_INFO_2W {
    DWORD   cVersion;
    LPWSTR    pName;              
    LPWSTR    pEnvironment;       
    LPWSTR    pDriverPath;        
    LPWSTR    pDataFile;          
    LPWSTR    pConfigFile;        
} DRIVER_INFO_2W, *PDRIVER_INFO_2W, *LPDRIVER_INFO_2W;

typedef DRIVER_INFO_2W DRIVER_INFO_2;
typedef PDRIVER_INFO_2W PDRIVER_INFO_2;
typedef LPDRIVER_INFO_2W LPDRIVER_INFO_2;




#line 426 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _DRIVER_INFO_3A {
    DWORD   cVersion;
    LPSTR     pName;                    
    LPSTR     pEnvironment;             
    LPSTR     pDriverPath;              
    LPSTR     pDataFile;                
    LPSTR     pConfigFile;              
    LPSTR     pHelpFile;                
    LPSTR     pDependentFiles;          
    LPSTR     pMonitorName;             
    LPSTR     pDefaultDataType;         
} DRIVER_INFO_3A, *PDRIVER_INFO_3A, *LPDRIVER_INFO_3A;
typedef struct _DRIVER_INFO_3W {
    DWORD   cVersion;
    LPWSTR    pName;                    
    LPWSTR    pEnvironment;             
    LPWSTR    pDriverPath;              
    LPWSTR    pDataFile;                
    LPWSTR    pConfigFile;              
    LPWSTR    pHelpFile;                
    LPWSTR    pDependentFiles;          
    LPWSTR    pMonitorName;             
    LPWSTR    pDefaultDataType;         
} DRIVER_INFO_3W, *PDRIVER_INFO_3W, *LPDRIVER_INFO_3W;

typedef DRIVER_INFO_3W DRIVER_INFO_3;
typedef PDRIVER_INFO_3W PDRIVER_INFO_3;
typedef LPDRIVER_INFO_3W LPDRIVER_INFO_3;




#line 460 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"












typedef struct _DOC_INFO_1A {
    LPSTR     pDocName;
    LPSTR     pOutputFile;
    LPSTR     pDatatype;
} DOC_INFO_1A, *PDOC_INFO_1A, *LPDOC_INFO_1A;
typedef struct _DOC_INFO_1W {
    LPWSTR    pDocName;
    LPWSTR    pOutputFile;
    LPWSTR    pDatatype;
} DOC_INFO_1W, *PDOC_INFO_1W, *LPDOC_INFO_1W;

typedef DOC_INFO_1W DOC_INFO_1;
typedef PDOC_INFO_1W PDOC_INFO_1;
typedef LPDOC_INFO_1W LPDOC_INFO_1;




#line 491 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _FORM_INFO_1A {
    DWORD   Flags;
    LPSTR     pName;
    SIZEL   Size;
    RECTL   ImageableArea;
} FORM_INFO_1A, *PFORM_INFO_1A, *LPFORM_INFO_1A;
typedef struct _FORM_INFO_1W {
    DWORD   Flags;
    LPWSTR    pName;
    SIZEL   Size;
    RECTL   ImageableArea;
} FORM_INFO_1W, *PFORM_INFO_1W, *LPFORM_INFO_1W;

typedef FORM_INFO_1W FORM_INFO_1;
typedef PFORM_INFO_1W PFORM_INFO_1;
typedef LPFORM_INFO_1W LPFORM_INFO_1;




#line 513 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _DOC_INFO_2A {
    LPSTR     pDocName;
    LPSTR     pOutputFile;
    LPSTR     pDatatype;
    DWORD   dwMode;
    DWORD   JobId;
} DOC_INFO_2A, *PDOC_INFO_2A, *LPDOC_INFO_2A;
typedef struct _DOC_INFO_2W {
    LPWSTR    pDocName;
    LPWSTR    pOutputFile;
    LPWSTR    pDatatype;
    DWORD   dwMode;
    DWORD   JobId;
} DOC_INFO_2W, *PDOC_INFO_2W, *LPDOC_INFO_2W;

typedef DOC_INFO_2W DOC_INFO_2;
typedef PDOC_INFO_2W PDOC_INFO_2;
typedef LPDOC_INFO_2W LPDOC_INFO_2;




#line 537 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"











typedef struct _PRINTPROCESSOR_INFO_1A {
    LPSTR     pName;
} PRINTPROCESSOR_INFO_1A, *PPRINTPROCESSOR_INFO_1A, *LPPRINTPROCESSOR_INFO_1A;
typedef struct _PRINTPROCESSOR_INFO_1W {
    LPWSTR    pName;
} PRINTPROCESSOR_INFO_1W, *PPRINTPROCESSOR_INFO_1W, *LPPRINTPROCESSOR_INFO_1W;

typedef PRINTPROCESSOR_INFO_1W PRINTPROCESSOR_INFO_1;
typedef PPRINTPROCESSOR_INFO_1W PPRINTPROCESSOR_INFO_1;
typedef LPPRINTPROCESSOR_INFO_1W LPPRINTPROCESSOR_INFO_1;




#line 563 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTPROCESSOR_CAPS_1 {
    DWORD     dwLevel;
    DWORD     dwNupOptions;
    DWORD     dwPageOrderFlags;
    DWORD     dwNumberOfCopies;
} PRINTPROCESSOR_CAPS_1, *PPRINTPROCESSOR_CAPS_1;

typedef struct _PORT_INFO_1A {
    LPSTR     pName;
} PORT_INFO_1A, *PPORT_INFO_1A, *LPPORT_INFO_1A;
typedef struct _PORT_INFO_1W {
    LPWSTR    pName;
} PORT_INFO_1W, *PPORT_INFO_1W, *LPPORT_INFO_1W;

typedef PORT_INFO_1W PORT_INFO_1;
typedef PPORT_INFO_1W PPORT_INFO_1;
typedef LPPORT_INFO_1W LPPORT_INFO_1;




#line 586 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PORT_INFO_2A {
    LPSTR     pPortName;
    LPSTR     pMonitorName;
    LPSTR     pDescription;
    DWORD     fPortType;
    DWORD     Reserved;
} PORT_INFO_2A, *PPORT_INFO_2A, *LPPORT_INFO_2A;
typedef struct _PORT_INFO_2W {
    LPWSTR    pPortName;
    LPWSTR    pMonitorName;
    LPWSTR    pDescription;
    DWORD     fPortType;
    DWORD     Reserved;
} PORT_INFO_2W, *PPORT_INFO_2W, *LPPORT_INFO_2W;

typedef PORT_INFO_2W PORT_INFO_2;
typedef PPORT_INFO_2W PPORT_INFO_2;
typedef LPPORT_INFO_2W LPPORT_INFO_2;




#line 610 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"






typedef struct _PORT_INFO_3A {
    DWORD   dwStatus;
    LPSTR   pszStatus;
    DWORD   dwSeverity;
} PORT_INFO_3A, *PPORT_INFO_3A, *LPPORT_INFO_3A;
typedef struct _PORT_INFO_3W {
    DWORD   dwStatus;
    LPWSTR  pszStatus;
    DWORD   dwSeverity;
} PORT_INFO_3W, *PPORT_INFO_3W, *LPPORT_INFO_3W;

typedef PORT_INFO_3W PORT_INFO_3;
typedef PPORT_INFO_3W PPORT_INFO_3;
typedef LPPORT_INFO_3W LPPORT_INFO_3;




#line 635 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"





















typedef struct _MONITOR_INFO_1A{
    LPSTR     pName;
} MONITOR_INFO_1A, *PMONITOR_INFO_1A, *LPMONITOR_INFO_1A;
typedef struct _MONITOR_INFO_1W{
    LPWSTR    pName;
} MONITOR_INFO_1W, *PMONITOR_INFO_1W, *LPMONITOR_INFO_1W;

typedef MONITOR_INFO_1W MONITOR_INFO_1;
typedef PMONITOR_INFO_1W PMONITOR_INFO_1;
typedef LPMONITOR_INFO_1W LPMONITOR_INFO_1;




#line 671 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _MONITOR_INFO_2A{
    LPSTR     pName;
    LPSTR     pEnvironment;
    LPSTR     pDLLName;
} MONITOR_INFO_2A, *PMONITOR_INFO_2A, *LPMONITOR_INFO_2A;
typedef struct _MONITOR_INFO_2W{
    LPWSTR    pName;
    LPWSTR    pEnvironment;
    LPWSTR    pDLLName;
} MONITOR_INFO_2W, *PMONITOR_INFO_2W, *LPMONITOR_INFO_2W;

typedef MONITOR_INFO_2W MONITOR_INFO_2;
typedef PMONITOR_INFO_2W PMONITOR_INFO_2;
typedef LPMONITOR_INFO_2W LPMONITOR_INFO_2;




#line 691 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _DATATYPES_INFO_1A{
    LPSTR     pName;
} DATATYPES_INFO_1A, *PDATATYPES_INFO_1A, *LPDATATYPES_INFO_1A;
typedef struct _DATATYPES_INFO_1W{
    LPWSTR    pName;
} DATATYPES_INFO_1W, *PDATATYPES_INFO_1W, *LPDATATYPES_INFO_1W;

typedef DATATYPES_INFO_1W DATATYPES_INFO_1;
typedef PDATATYPES_INFO_1W PDATATYPES_INFO_1;
typedef LPDATATYPES_INFO_1W LPDATATYPES_INFO_1;




#line 707 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_DEFAULTSA{
    LPSTR         pDatatype;
    LPDEVMODEA pDevMode;
    ACCESS_MASK DesiredAccess;
} PRINTER_DEFAULTSA, *PPRINTER_DEFAULTSA, *LPPRINTER_DEFAULTSA;
typedef struct _PRINTER_DEFAULTSW{
    LPWSTR        pDatatype;
    LPDEVMODEW pDevMode;
    ACCESS_MASK DesiredAccess;
} PRINTER_DEFAULTSW, *PPRINTER_DEFAULTSW, *LPPRINTER_DEFAULTSW;

typedef PRINTER_DEFAULTSW PRINTER_DEFAULTS;
typedef PPRINTER_DEFAULTSW PPRINTER_DEFAULTS;
typedef LPPRINTER_DEFAULTSW LPPRINTER_DEFAULTS;




#line 727 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

typedef struct _PRINTER_ENUM_VALUESA {
    LPSTR   pValueName;
    DWORD   cbValueName;
    DWORD   dwType;
    LPBYTE  pData;
    DWORD   cbData;
} PRINTER_ENUM_VALUESA, *PPRINTER_ENUM_VALUESA, *LPPRINTER_ENUM_VALUESA;
typedef struct _PRINTER_ENUM_VALUESW {
    LPWSTR  pValueName;
    DWORD   cbValueName;
    DWORD   dwType;
    LPBYTE  pData;
    DWORD   cbData;
} PRINTER_ENUM_VALUESW, *PPRINTER_ENUM_VALUESW, *LPPRINTER_ENUM_VALUESW;

typedef PRINTER_ENUM_VALUESW PRINTER_ENUM_VALUES;
typedef PPRINTER_ENUM_VALUESW PPRINTER_ENUM_VALUES;
typedef LPPRINTER_ENUM_VALUESW LPPRINTER_ENUM_VALUES;




#line 751 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumPrintersA(
    DWORD   Flags,
    LPSTR Name,
    DWORD   Level,
    LPBYTE  pPrinterEnum,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPrintersW(
    DWORD   Flags,
    LPWSTR Name,
    DWORD   Level,
    LPBYTE  pPrinterEnum,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 779 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"























BOOL
__stdcall
OpenPrinterA(
   LPSTR    pPrinterName,
   LPHANDLE phPrinter,
   LPPRINTER_DEFAULTSA pDefault
);
BOOL
__stdcall
OpenPrinterW(
   LPWSTR    pPrinterName,
   LPHANDLE phPrinter,
   LPPRINTER_DEFAULTSW pDefault
);




#line 821 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
ResetPrinterA(
   HANDLE   hPrinter,
   LPPRINTER_DEFAULTSA pDefault
);
BOOL
__stdcall
ResetPrinterW(
   HANDLE   hPrinter,
   LPPRINTER_DEFAULTSW pDefault
);




#line 839 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
SetJobA(
    HANDLE  hPrinter,
    DWORD   JobId,
    DWORD   Level,
    LPBYTE  pJob,
    DWORD   Command
);
BOOL
__stdcall
SetJobW(
    HANDLE  hPrinter,
    DWORD   JobId,
    DWORD   Level,
    LPBYTE  pJob,
    DWORD   Command
);




#line 863 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
GetJobA(
   HANDLE   hPrinter,
   DWORD    JobId,
   DWORD    Level,
   LPBYTE   pJob,
   DWORD    cbBuf,
   LPDWORD  pcbNeeded
);
BOOL
__stdcall
GetJobW(
   HANDLE   hPrinter,
   DWORD    JobId,
   DWORD    Level,
   LPBYTE   pJob,
   DWORD    cbBuf,
   LPDWORD  pcbNeeded
);




#line 889 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumJobsA(
    HANDLE  hPrinter,
    DWORD   FirstJob,
    DWORD   NoJobs,
    DWORD   Level,
    LPBYTE  pJob,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumJobsW(
    HANDLE  hPrinter,
    DWORD   FirstJob,
    DWORD   NoJobs,
    DWORD   Level,
    LPBYTE  pJob,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 919 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

HANDLE
__stdcall
AddPrinterA(
    LPSTR   pName,
    DWORD   Level,
    LPBYTE  pPrinter
);
HANDLE
__stdcall
AddPrinterW(
    LPWSTR   pName,
    DWORD   Level,
    LPBYTE  pPrinter
);




#line 939 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePrinter(
   HANDLE   hPrinter
);

BOOL
__stdcall
SetPrinterA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pPrinter,
    DWORD   Command
);
BOOL
__stdcall
SetPrinterW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pPrinter,
    DWORD   Command
);




#line 967 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
GetPrinterA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pPrinter,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
GetPrinterW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pPrinter,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 991 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
AddPrinterDriverA(
    LPSTR   pName,
    DWORD   Level,
    LPBYTE  pDriverInfo
);
BOOL
__stdcall
AddPrinterDriverW(
    LPWSTR   pName,
    DWORD   Level,
    LPBYTE  pDriverInfo
);




#line 1011 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
AddPrinterDriverExA(
    LPSTR   pName,
    DWORD     Level,
    LPBYTE    pDriverInfo,
    DWORD     dwFileCopyFlags
);
BOOL
__stdcall
AddPrinterDriverExW(
    LPWSTR   pName,
    DWORD     Level,
    LPBYTE    pDriverInfo,
    DWORD     dwFileCopyFlags
);




#line 1033 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumPrinterDriversA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPrinterDriversW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 1061 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
GetPrinterDriverA(
    HANDLE  hPrinter,
    LPSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
GetPrinterDriverW(
    HANDLE  hPrinter,
    LPWSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 1087 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
GetPrinterDriverDirectoryA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverDirectory,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
GetPrinterDriverDirectoryW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pDriverDirectory,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 1113 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePrinterDriverA(
   LPSTR    pName,
   LPSTR    pEnvironment,
   LPSTR    pDriverName
);
BOOL
__stdcall
DeletePrinterDriverW(
   LPWSTR    pName,
   LPWSTR    pEnvironment,
   LPWSTR    pDriverName
);




#line 1133 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePrinterDriverExA(
   LPSTR    pName,
   LPSTR    pEnvironment,
   LPSTR    pDriverName,
   DWORD      dwDeleteFlag,
   DWORD      dwVersionFlag
);
BOOL
__stdcall
DeletePrinterDriverExW(
   LPWSTR    pName,
   LPWSTR    pEnvironment,
   LPWSTR    pDriverName,
   DWORD      dwDeleteFlag,
   DWORD      dwVersionFlag
);




#line 1157 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
AddPerMachineConnectionA(
   LPCSTR    pServer,
   LPCSTR    pPrinterName,
   LPCSTR    pPrintServer,
   LPCSTR    pProvider
);
BOOL
__stdcall
AddPerMachineConnectionW(
   LPCWSTR    pServer,
   LPCWSTR    pPrinterName,
   LPCWSTR    pPrintServer,
   LPCWSTR    pProvider
);




#line 1179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePerMachineConnectionA(
   LPCSTR    pServer,
   LPCSTR    pPrinterName
);
BOOL
__stdcall
DeletePerMachineConnectionW(
   LPCWSTR    pServer,
   LPCWSTR    pPrinterName
);




#line 1197 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumPerMachineConnectionsA(
    LPCSTR   pServer,
    LPBYTE  pPrinterEnum,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPerMachineConnectionsW(
    LPCWSTR   pServer,
    LPBYTE  pPrinterEnum,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 1221 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
AddPrintProcessorA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    LPSTR   pPathName,
    LPSTR   pPrintProcessorName
);
BOOL
__stdcall
AddPrintProcessorW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    LPWSTR   pPathName,
    LPWSTR   pPrintProcessorName
);




#line 1243 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumPrintProcessorsA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pPrintProcessorInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPrintProcessorsW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pPrintProcessorInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 1271 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
GetPrintProcessorDirectoryA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pPrintProcessorInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
GetPrintProcessorDirectoryW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    DWORD   Level,
    LPBYTE  pPrintProcessorInfo,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 1299 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
EnumPrintProcessorDatatypesA(
    LPSTR   pName,
    LPSTR   pPrintProcessorName,
    DWORD   Level,
    LPBYTE  pDatatypes,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPrintProcessorDatatypesW(
    LPWSTR   pName,
    LPWSTR   pPrintProcessorName,
    DWORD   Level,
    LPBYTE  pDatatypes,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 1327 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePrintProcessorA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    LPSTR   pPrintProcessorName
);
BOOL
__stdcall
DeletePrintProcessorW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    LPWSTR   pPrintProcessorName
);




#line 1347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
StartDocPrinterA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pDocInfo
);
DWORD
__stdcall
StartDocPrinterW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pDocInfo
);




#line 1367 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
StartPagePrinter(
    HANDLE  hPrinter
);

BOOL
__stdcall
WritePrinter(
    HANDLE  hPrinter,
    LPVOID  pBuf,
    DWORD   cbBuf,
    LPDWORD pcWritten
);


BOOL
__stdcall
EndPagePrinter(
   HANDLE   hPrinter
);

BOOL
__stdcall
AbortPrinter(
   HANDLE   hPrinter
);

BOOL
__stdcall
ReadPrinter(
    HANDLE  hPrinter,
    LPVOID  pBuf,
    DWORD   cbBuf,
    LPDWORD pNoBytesRead
);

BOOL
__stdcall
EndDocPrinter(
   HANDLE   hPrinter
);

BOOL
__stdcall
AddJobA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pData,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
AddJobW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pData,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 1434 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
ScheduleJob(
    HANDLE  hPrinter,
    DWORD   JobId
);

BOOL
__stdcall
PrinterProperties(
    HWND    hWnd,
    HANDLE  hPrinter
);

LONG
__stdcall
DocumentPropertiesA(
    HWND      hWnd,
    HANDLE    hPrinter,
    LPSTR   pDeviceName,
    PDEVMODEA pDevModeOutput,
    PDEVMODEA pDevModeInput,
    DWORD     fMode
);
LONG
__stdcall
DocumentPropertiesW(
    HWND      hWnd,
    HANDLE    hPrinter,
    LPWSTR   pDeviceName,
    PDEVMODEW pDevModeOutput,
    PDEVMODEW pDevModeInput,
    DWORD     fMode
);




#line 1474 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

LONG
__stdcall
AdvancedDocumentPropertiesA(
    HWND    hWnd,
    HANDLE  hPrinter,
    LPSTR   pDeviceName,
    PDEVMODEA pDevModeOutput,
    PDEVMODEA pDevModeInput
);
LONG
__stdcall
AdvancedDocumentPropertiesW(
    HWND    hWnd,
    HANDLE  hPrinter,
    LPWSTR   pDeviceName,
    PDEVMODEW pDevModeOutput,
    PDEVMODEW pDevModeInput
);




#line 1498 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


DWORD
__stdcall
GetPrinterDataA(
    HANDLE   hPrinter,
    LPSTR  pValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    nSize,
    LPDWORD  pcbNeeded
);
DWORD
__stdcall
GetPrinterDataW(
    HANDLE   hPrinter,
    LPWSTR  pValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    nSize,
    LPDWORD  pcbNeeded
);




#line 1525 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
GetPrinterDataExA(
    HANDLE   hPrinter,
    LPCSTR pKeyName,
    LPCSTR pValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    nSize,
    LPDWORD  pcbNeeded
);
DWORD
__stdcall
GetPrinterDataExW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName,
    LPCWSTR pValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    nSize,
    LPDWORD  pcbNeeded
);




#line 1553 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
EnumPrinterDataA(
    HANDLE   hPrinter,
    DWORD    dwIndex,
    LPSTR  pValueName,
    DWORD    cbValueName,
    LPDWORD  pcbValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    cbData,
    LPDWORD  pcbData
);
DWORD
__stdcall
EnumPrinterDataW(
    HANDLE   hPrinter,
    DWORD    dwIndex,
    LPWSTR  pValueName,
    DWORD    cbValueName,
    LPDWORD  pcbValueName,
    LPDWORD  pType,
    LPBYTE   pData,
    DWORD    cbData,
    LPDWORD  pcbData
);




#line 1585 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
EnumPrinterDataExA(
    HANDLE   hPrinter,
    LPCSTR pKeyName,
    LPBYTE   pEnumValues,
    DWORD    cbEnumValues,
    LPDWORD  pcbEnumValues,
    LPDWORD  pnEnumValues
);
DWORD
__stdcall
EnumPrinterDataExW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName,
    LPBYTE   pEnumValues,
    DWORD    cbEnumValues,
    LPDWORD  pcbEnumValues,
    LPDWORD  pnEnumValues
);




#line 1611 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
EnumPrinterKeyA(
    HANDLE   hPrinter,
    LPCSTR pKeyName,
    LPSTR  pSubkey,
    DWORD    cbSubkey,
    LPDWORD  pcbSubkey
);
DWORD
__stdcall
EnumPrinterKeyW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName,
    LPWSTR  pSubkey,
    DWORD    cbSubkey,
    LPDWORD  pcbSubkey
);




#line 1635 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


DWORD
__stdcall
SetPrinterDataA(
    HANDLE  hPrinter,
    LPSTR pValueName,
    DWORD   Type,
    LPBYTE  pData,
    DWORD   cbData
);
DWORD
__stdcall
SetPrinterDataW(
    HANDLE  hPrinter,
    LPWSTR pValueName,
    DWORD   Type,
    LPBYTE  pData,
    DWORD   cbData
);




#line 1660 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


DWORD
__stdcall
SetPrinterDataExA(
    HANDLE   hPrinter,
    LPCSTR pKeyName,
    LPCSTR pValueName,
    DWORD    Type,
    LPBYTE   pData,
    DWORD    cbData
);
DWORD
__stdcall
SetPrinterDataExW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName,
    LPCWSTR pValueName,
    DWORD    Type,
    LPBYTE   pData,
    DWORD    cbData
);




#line 1687 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



DWORD
__stdcall
DeletePrinterDataA(
    HANDLE  hPrinter,
    LPSTR pValueName
);
DWORD
__stdcall
DeletePrinterDataW(
    HANDLE  hPrinter,
    LPWSTR pValueName
);




#line 1707 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


DWORD
__stdcall
DeletePrinterDataExA(
    HANDLE   hPrinter,
    LPCSTR pKeyName,
    LPCSTR pValueName
);
DWORD
__stdcall
DeletePrinterDataExW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName,
    LPCWSTR pValueName
);




#line 1728 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


DWORD
__stdcall
DeletePrinterKeyA(
    HANDLE   hPrinter,
    LPCSTR pKeyName
);
DWORD
__stdcall
DeletePrinterKeyW(
    HANDLE   hPrinter,
    LPCWSTR pKeyName
);




#line 1747 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



























































typedef struct _PRINTER_NOTIFY_OPTIONS_TYPE {
    WORD Type;
    WORD Reserved0;
    DWORD Reserved1;
    DWORD Reserved2;
    DWORD Count;
    PWORD pFields;
} PRINTER_NOTIFY_OPTIONS_TYPE, *PPRINTER_NOTIFY_OPTIONS_TYPE, *LPPRINTER_NOTIFY_OPTIONS_TYPE;




typedef struct _PRINTER_NOTIFY_OPTIONS {
    DWORD Version;
    DWORD Flags;
    DWORD Count;
    PPRINTER_NOTIFY_OPTIONS_TYPE pTypes;
} PRINTER_NOTIFY_OPTIONS, *PPRINTER_NOTIFY_OPTIONS, *LPPRINTER_NOTIFY_OPTIONS;





typedef struct _PRINTER_NOTIFY_INFO_DATA {
    WORD Type;
    WORD Field;
    DWORD Reserved;
    DWORD Id;
    union {
        DWORD adwData[2];
        struct {
            DWORD  cbBuf;
            LPVOID pBuf;
        } Data;
    } NotifyData;
} PRINTER_NOTIFY_INFO_DATA, *PPRINTER_NOTIFY_INFO_DATA, *LPPRINTER_NOTIFY_INFO_DATA;

typedef struct _PRINTER_NOTIFY_INFO {
    DWORD Version;
    DWORD Flags;
    DWORD Count;
    PRINTER_NOTIFY_INFO_DATA aData[1];
} PRINTER_NOTIFY_INFO, *PPRINTER_NOTIFY_INFO, *LPPRINTER_NOTIFY_INFO;

DWORD
__stdcall
WaitForPrinterChange(
    HANDLE  hPrinter,
    DWORD   Flags
);

HANDLE
__stdcall
FindFirstPrinterChangeNotification(
    HANDLE  hPrinter,
    DWORD   fdwFlags,
    DWORD   fdwOptions,
    LPVOID  pPrinterNotifyOptions
);


BOOL
__stdcall
FindNextPrinterChangeNotification(
    HANDLE hChange,
    PDWORD pdwChange,
    LPVOID pvReserved,
    LPVOID *ppPrinterNotifyInfo
);

BOOL
__stdcall
FreePrinterNotifyInfo(
    PPRINTER_NOTIFY_INFO pPrinterNotifyInfo
);

BOOL
__stdcall
FindClosePrinterChangeNotification(
    HANDLE hChange
);





























DWORD
__stdcall
PrinterMessageBoxA(
    HANDLE  hPrinter,
    DWORD   Error,
    HWND    hWnd,
    LPSTR   pText,
    LPSTR   pCaption,
    DWORD   dwType
);
DWORD
__stdcall
PrinterMessageBoxW(
    HANDLE  hPrinter,
    DWORD   Error,
    HWND    hWnd,
    LPWSTR   pText,
    LPWSTR   pCaption,
    DWORD   dwType
);




#line 1941 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"











BOOL
__stdcall
ClosePrinter(
    HANDLE hPrinter
);

BOOL
__stdcall
AddFormA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pForm
);
BOOL
__stdcall
AddFormW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pForm
);




#line 1977 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
DeleteFormA(
    HANDLE  hPrinter,
    LPSTR   pFormName
);
BOOL
__stdcall
DeleteFormW(
    HANDLE  hPrinter,
    LPWSTR   pFormName
);




#line 1997 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
GetFormA(
    HANDLE  hPrinter,
    LPSTR   pFormName,
    DWORD   Level,
    LPBYTE  pForm,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);
BOOL
__stdcall
GetFormW(
    HANDLE  hPrinter,
    LPWSTR   pFormName,
    DWORD   Level,
    LPBYTE  pForm,
    DWORD   cbBuf,
    LPDWORD pcbNeeded
);




#line 2025 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
SetFormA(
    HANDLE  hPrinter,
    LPSTR   pFormName,
    DWORD   Level,
    LPBYTE  pForm
);
BOOL
__stdcall
SetFormW(
    HANDLE  hPrinter,
    LPWSTR   pFormName,
    DWORD   Level,
    LPBYTE  pForm
);




#line 2049 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
EnumFormsA(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pForm,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumFormsW(
    HANDLE  hPrinter,
    DWORD   Level,
    LPBYTE  pForm,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 2077 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
EnumMonitorsA(
    LPSTR   pName,
    DWORD   Level,
    LPBYTE  pMonitors,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumMonitorsW(
    LPWSTR   pName,
    DWORD   Level,
    LPBYTE  pMonitors,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 2105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
AddMonitorA(
    LPSTR   pName,
    DWORD   Level,
    LPBYTE  pMonitors
);
BOOL
__stdcall
AddMonitorW(
    LPWSTR   pName,
    DWORD   Level,
    LPBYTE  pMonitors
);




#line 2127 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
DeleteMonitorA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    LPSTR   pMonitorName
);
BOOL
__stdcall
DeleteMonitorW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    LPWSTR   pMonitorName
);




#line 2149 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
EnumPortsA(
    LPSTR   pName,
    DWORD   Level,
    LPBYTE  pPorts,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);
BOOL
__stdcall
EnumPortsW(
    LPWSTR   pName,
    DWORD   Level,
    LPBYTE  pPorts,
    DWORD   cbBuf,
    LPDWORD pcbNeeded,
    LPDWORD pcReturned
);




#line 2177 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
AddPortA(
    LPSTR   pName,
    HWND    hWnd,
    LPSTR   pMonitorName
);
BOOL
__stdcall
AddPortW(
    LPWSTR   pName,
    HWND    hWnd,
    LPWSTR   pMonitorName
);




#line 2199 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
ConfigurePortA(
    LPSTR   pName,
    HWND    hWnd,
    LPSTR   pPortName
);
BOOL
__stdcall
ConfigurePortW(
    LPWSTR   pName,
    HWND    hWnd,
    LPWSTR   pPortName
);




#line 2221 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePortA(
    LPSTR pName,
    HWND    hWnd,
    LPSTR pPortName
);
BOOL
__stdcall
DeletePortW(
    LPWSTR pName,
    HWND    hWnd,
    LPWSTR pPortName
);




#line 2241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
XcvDataW(
    HANDLE  hXcv,
    PCWSTR  pszDataName,
    PBYTE   pInputData,
    DWORD   cbInputData,
    PBYTE   pOutputData,
    DWORD   cbOutputData,
    PDWORD  pcbOutputNeeded,
    PDWORD  pdwStatus
);



BOOL
__stdcall
SetPortA(
    LPSTR     pName,
    LPSTR     pPortName,
    DWORD       dwLevel,
    LPBYTE      pPortInfo
);
BOOL
__stdcall
SetPortW(
    LPWSTR     pName,
    LPWSTR     pPortName,
    DWORD       dwLevel,
    LPBYTE      pPortInfo
);




#line 2278 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
AddPrinterConnectionA(
    LPSTR   pName
);
BOOL
__stdcall
AddPrinterConnectionW(
    LPWSTR   pName
);




#line 2296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
DeletePrinterConnectionA(
    LPSTR   pName
);
BOOL
__stdcall
DeletePrinterConnectionW(
    LPWSTR   pName
);




#line 2314 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



HANDLE
__stdcall
ConnectToPrinterDlg(
    HWND    hwnd,
    DWORD   Flags
);

typedef struct _PROVIDOR_INFO_1A{
    LPSTR     pName;
    LPSTR     pEnvironment;
    LPSTR     pDLLName;
} PROVIDOR_INFO_1A, *PPROVIDOR_INFO_1A, *LPPROVIDOR_INFO_1A;
typedef struct _PROVIDOR_INFO_1W{
    LPWSTR    pName;
    LPWSTR    pEnvironment;
    LPWSTR    pDLLName;
} PROVIDOR_INFO_1W, *PPROVIDOR_INFO_1W, *LPPROVIDOR_INFO_1W;

typedef PROVIDOR_INFO_1W PROVIDOR_INFO_1;
typedef PPROVIDOR_INFO_1W PPROVIDOR_INFO_1;
typedef LPPROVIDOR_INFO_1W LPPROVIDOR_INFO_1;




#line 2343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"



BOOL
__stdcall
AddPrintProvidorA(
    LPSTR  pName,
    DWORD    level,
    LPBYTE   pProvidorInfo
);
BOOL
__stdcall
AddPrintProvidorW(
    LPWSTR  pName,
    DWORD    level,
    LPBYTE   pProvidorInfo
);




#line 2365 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

BOOL
__stdcall
DeletePrintProvidorA(
    LPSTR   pName,
    LPSTR   pEnvironment,
    LPSTR   pPrintProvidorName
);
BOOL
__stdcall
DeletePrintProvidorW(
    LPWSTR   pName,
    LPWSTR   pEnvironment,
    LPWSTR   pPrintProvidorName
);




#line 2385 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

































































































































































DWORD
__stdcall
SetPrinterHTMLViewA(
    HANDLE hPrinter,
    DWORD dwView,
    LPCSTR lpszPath
);
DWORD
__stdcall
SetPrinterHTMLViewW(
    HANDLE hPrinter,
    DWORD dwView,
    LPCWSTR lpszPath
);




#line 2565 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

DWORD
__stdcall
GetPrinterHTMLViewA(
    HANDLE hPrinter,
    DWORD dwView,
    LPSTR lpszPath,
    DWORD nSize,
    LPDWORD pcbNeeded
);
DWORD
__stdcall
GetPrinterHTMLViewW(
    HANDLE hPrinter,
    DWORD dwView,
    LPWSTR lpszPath,
    DWORD nSize,
    LPDWORD pcbNeeded
);




#line 2589 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"


}
#line 2593 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"

#line 2595 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winspool.h"
#line 216 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\windows.h"



#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"















#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#pragma pack(8)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 17 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"




#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"




#line 27 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"






#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\winerror.h"








































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 34 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"







#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"











#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 13 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

















































#line 51 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"


















#line 70 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



#line 74 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsip.h"



















extern "C" {
#line 22 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsip.h"

typedef struct
{
   RPC_NS_HANDLE        LookupContext;
   RPC_BINDING_HANDLE   ProposedHandle;
   RPC_BINDING_VECTOR * Bindings;

} RPC_IMPORT_CONTEXT_P, * PRPC_IMPORT_CONTEXT_P;




RPC_STATUS __stdcall
I_RpcNsGetBuffer(
     PRPC_MESSAGE Message
    );

RPC_STATUS __stdcall
I_RpcNsSendReceive(
     PRPC_MESSAGE Message,
     RPC_BINDING_HANDLE  * Handle
    );

void __stdcall
I_RpcNsRaiseException(
     PRPC_MESSAGE Message,
     RPC_STATUS Status
    );

RPC_STATUS __stdcall
I_RpcReBindBuffer(
     PRPC_MESSAGE Message
    );

RPC_STATUS __stdcall
I_NsServerBindSearch(
    );

RPC_STATUS __stdcall
I_NsClientBindSearch(
    );

void __stdcall
I_NsClientBindDone(
    );


}
#line 71 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsip.h"

#line 73 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcnsip.h"
#line 76 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"


extern "C" {
#line 80 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



























































#line 140 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"


#line 143 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"








#line 152 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

#line 154 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



#line 158 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

#line 160 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"





#line 166 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"






typedef unsigned char byte;
typedef unsigned char boolean;










#line 185 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

#line 187 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"
























#line 212 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"
#line 213 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"











void  * __stdcall MIDL_user_allocate(size_t);
void             __stdcall MIDL_user_free( void  * );





#line 232 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"









#line 242 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"











typedef void  * NDR_CCONTEXT;

typedef struct
    {
    void  * pad[2];
    void  * userContext;
    }  * NDR_SCONTEXT;





typedef void (__stdcall  * NDR_RUNDOWN)(void  * context);

typedef struct _SCONTEXT_QUEUE {
    unsigned long   NumberOfObjects;
    NDR_SCONTEXT  * ArrayOfObjects;
    } SCONTEXT_QUEUE,  * PSCONTEXT_QUEUE;

__declspec(dllimport)
RPC_BINDING_HANDLE
__stdcall
NDRCContextBinding (
     NDR_CCONTEXT     CContext
    );

__declspec(dllimport)
void
__stdcall
NDRCContextMarshall (
      NDR_CCONTEXT    CContext,
     void  *pBuff
    );

__declspec(dllimport)
void
__stdcall
NDRCContextUnmarshall (
     NDR_CCONTEXT  *pCContext,
      RPC_BINDING_HANDLE      hBinding,
      void  *        pBuff,
      unsigned long           DataRepresentation
    );

__declspec(dllimport)
void
__stdcall
NDRSContextMarshall (
      NDR_SCONTEXT    CContext,
     void  *pBuff,
      NDR_RUNDOWN     userRunDownIn
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NDRSContextUnmarshall (
      void  *pBuff,
      unsigned long   DataRepresentation
    );

__declspec(dllimport)
void 
__stdcall
NDRSContextMarshallEx (
      RPC_BINDING_HANDLE  BindingHandle, 
      NDR_SCONTEXT        CContext,
     void      *pBuff,
      NDR_RUNDOWN         userRunDownIn
    );

__declspec(dllimport)
NDR_SCONTEXT 
__stdcall
NDRSContextUnmarshallEx (
      RPC_BINDING_HANDLE  BindingHandle, 
      void      *pBuff,
      unsigned long       DataRepresentation
    );

__declspec(dllimport)
void
__stdcall
RpcSsDestroyClientContext (
     void  *  * ContextHandle
    );


















































































#line 422 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"





__declspec(dllimport)
void
__stdcall
NDRcopy (
     void  *pTarget,
     void  *pSource,
     unsigned int size
    );

__declspec(dllimport)
size_t
__stdcall
MIDL_wchar_strlen (
     wchar_t  *   s
    );

__declspec(dllimport)
void
__stdcall
MIDL_wchar_strcpy (
     void  *     t,
     wchar_t  *   s
    );

__declspec(dllimport)
void
__stdcall
char_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     unsigned char  *                 Target
    );

__declspec(dllimport)
void
__stdcall
char_array_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
     unsigned char  *                 Target
    );

__declspec(dllimport)
void
__stdcall
short_from_ndr (
      PRPC_MESSAGE                           source,
     unsigned short  *                target
    );

__declspec(dllimport)
void
__stdcall
short_array_from_ndr(
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
     unsigned short  *                Target
    );

__declspec(dllimport)
void
__stdcall
short_from_ndr_temp (
      unsigned char  *  *  source,
     unsigned short  *                target,
     unsigned long                              format
    );

__declspec(dllimport)
void
__stdcall
long_from_ndr (
      PRPC_MESSAGE                           source,
     unsigned long  *                 target
    );

__declspec(dllimport)
void
__stdcall
long_array_from_ndr(
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
     unsigned long  *                 Target
    );

__declspec(dllimport)
void
__stdcall
long_from_ndr_temp (
      unsigned char  *  *  source,
     unsigned long  *                 target,
     unsigned long                              format
    );

__declspec(dllimport)
void
__stdcall
enum_from_ndr(
      PRPC_MESSAGE                           SourceMessage,
     unsigned int  *                  Target
    );

__declspec(dllimport)
void
__stdcall
float_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     void  *                          Target
    );

__declspec(dllimport)
void
__stdcall
float_array_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
     void  *                          Target
    );

__declspec(dllimport)
void
__stdcall
double_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     void  *                          Target
    );

__declspec(dllimport)
void
__stdcall
double_array_from_ndr (
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
     void  *                          Target
    );

__declspec(dllimport)
void
__stdcall
hyper_from_ndr (
      PRPC_MESSAGE                           source,
        __int64  *                      target
    );

__declspec(dllimport)
void
__stdcall
hyper_array_from_ndr(
      PRPC_MESSAGE                           SourceMessage,
     unsigned long                              LowerIndex,
     unsigned long                              UpperIndex,
              __int64  *                Target
    );

__declspec(dllimport)
void
__stdcall
hyper_from_ndr_temp (
      unsigned char  *  *  source,
                 __int64  *             target,
       unsigned   long                          format
    );

__declspec(dllimport)
void
__stdcall
data_from_ndr (
    PRPC_MESSAGE                                  source,
    void  *                              target,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void
__stdcall
data_into_ndr (
    void  *                              source,
    PRPC_MESSAGE                                  target,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void
__stdcall
tree_into_ndr (
    void  *                              source,
    PRPC_MESSAGE                                  target,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void
__stdcall
data_size_ndr (
    void  *                              source,
    PRPC_MESSAGE                                  target,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void
__stdcall
tree_size_ndr (
    void  *                              source,
    PRPC_MESSAGE                                  target,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void
__stdcall
tree_peek_ndr (
    PRPC_MESSAGE                                  source,
    unsigned char  *  *         buffer,
    char  *                              format,
    unsigned char                                 MscPak
    );

__declspec(dllimport)
void  *
__stdcall
midl_allocate (
    size_t      size
    );





typedef unsigned long error_status_t;

























































#line 724 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



#line 728 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



















struct _MIDL_STUB_MESSAGE;
struct _MIDL_STUB_DESC;
struct _FULL_PTR_XLAT_TABLES;

typedef unsigned char  * RPC_BUFPTR;
typedef unsigned long             RPC_LENGTH;


typedef void (__stdcall  * EXPR_EVAL)( struct _MIDL_STUB_MESSAGE  * );

typedef const unsigned char  * PFORMAT_STRING;




typedef struct
    {
    long                            Dimension;

    
    unsigned long  *       BufferConformanceMark;
    unsigned long  *       BufferVarianceMark;

    
    unsigned long  *       MaxCountArray;
    unsigned long  *       OffsetArray;
    unsigned long  *       ActualCountArray;
    } ARRAY_INFO,  *PARRAY_INFO;





typedef struct _NDR_PIPE_DESC *       PNDR_PIPE_DESC;
typedef struct _NDR_PIPE_MESSAGE *    PNDR_PIPE_MESSAGE;

typedef struct _NDR_ASYNC_MESSAGE *   PNDR_ASYNC_MESSAGE;





#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#pragma pack(4)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack4.h"
#line 790 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"
#line 791 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

typedef struct _MIDL_STUB_MESSAGE
    {
    
    PRPC_MESSAGE                RpcMsg;

    
    unsigned char  *   Buffer;

    



    unsigned char  *   BufferStart;
    unsigned char  *   BufferEnd;

    






    unsigned char  *   BufferMark;

    
    unsigned long               BufferLength;

    
    unsigned long               MemorySize;

    
    unsigned char  *   Memory;

    
    int                         IsClient;

    
    int                         ReuseBuffer;

    
    unsigned char  *   AllocAllNodesMemory;

    
    unsigned char  *   AllocAllNodesMemoryEnd;

    



    
    int                         IgnoreEmbeddedPointers;

    



    unsigned char  *   PointerBufferMark;

    


    unsigned char               fBufferValid;

    


    unsigned char               Unused;

    



    unsigned long               MaxCount;

    



    unsigned long               Offset;

    



    unsigned long               ActualCount;

    
    void  *    ( __stdcall * pfnAllocate)(size_t);
    void                ( __stdcall * pfnFree)(void  *);

    





    unsigned char  *       StackTop;

    



    unsigned char  *       pPresentedType;
    unsigned char  *       pTransmitType;

    







    handle_t                        SavedHandle;

    


    const struct _MIDL_STUB_DESC  *    StubDesc;

    


    struct _FULL_PTR_XLAT_TABLES  *    FullPtrXlatTables;

    unsigned long                   FullPtrRefId;

    



    int                             fCheckBounds;

    int                             fInDontFree       :1;
    int                             fDontCallFreeInst :1;
    int                             fInOnlyParam      :1;
    int                             fHasReturn        :1;

    unsigned long                   dwDestContext;
    void  *                pvDestContext;

    NDR_SCONTEXT *                  SavedContextHandles;

    long                            ParamNumber;

    struct IRpcChannelBuffer  *    pRpcChannelBuffer;

    PARRAY_INFO                     pArrayInfo;

    



    unsigned long  *       SizePtrCountArray;
    unsigned long  *       SizePtrOffsetArray;
    unsigned long  *       SizePtrLengthArray;

    


    void  *                pArgQueue;

    unsigned long                   dwStubPhase;

    


    PNDR_PIPE_DESC                  pPipeDesc;

    


    PNDR_ASYNC_MESSAGE              pAsyncMsg;

    unsigned long                   Reserved[3];

    



    } MIDL_STUB_MESSAGE,  *PMIDL_STUB_MESSAGE;


#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


























#pragma warning(disable:4103)

#pragma pack(pop)


#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"


#line 36 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\poppack.h"
#line 976 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"
#line 977 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"




typedef void  *
        ( __stdcall * GENERIC_BINDING_ROUTINE)
        (void  *);
typedef void
        ( __stdcall * GENERIC_UNBIND_ROUTINE)
        (void  *, unsigned char  *);

typedef struct _GENERIC_BINDING_ROUTINE_PAIR
    {
    GENERIC_BINDING_ROUTINE     pfnBind;
    GENERIC_UNBIND_ROUTINE      pfnUnbind;
    } GENERIC_BINDING_ROUTINE_PAIR,  *PGENERIC_BINDING_ROUTINE_PAIR;

typedef struct __GENERIC_BINDING_INFO
    {
    void  *            pObj;
    unsigned int                Size;
    GENERIC_BINDING_ROUTINE     pfnBind;
    GENERIC_UNBIND_ROUTINE      pfnUnbind;
    } GENERIC_BINDING_INFO,  *PGENERIC_BINDING_INFO;









#line 1011 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"


typedef void ( __stdcall * XMIT_HELPER_ROUTINE)
    ( PMIDL_STUB_MESSAGE );

typedef struct _XMIT_ROUTINE_QUINTUPLE
    {
    XMIT_HELPER_ROUTINE     pfnTranslateToXmit;
    XMIT_HELPER_ROUTINE     pfnTranslateFromXmit;
    XMIT_HELPER_ROUTINE     pfnFreeXmit;
    XMIT_HELPER_ROUTINE     pfnFreeInst;
    } XMIT_ROUTINE_QUINTUPLE,  *PXMIT_ROUTINE_QUINTUPLE;

typedef unsigned long
( __stdcall * USER_MARSHAL_SIZING_ROUTINE)
    (unsigned long  *,
     unsigned long,
     void  * );

typedef unsigned char  *
( __stdcall * USER_MARSHAL_MARSHALLING_ROUTINE)
    (unsigned long  *,
     unsigned char   * ,
     void  * );

typedef unsigned char  *
( __stdcall * USER_MARSHAL_UNMARSHALLING_ROUTINE)
    (unsigned long  *,
     unsigned char   * ,
     void  * );

typedef void ( __stdcall * USER_MARSHAL_FREEING_ROUTINE)
    (unsigned long  *,
     void  * );

typedef struct _USER_MARSHAL_ROUTINE_QUADRUPLE
    {
    USER_MARSHAL_SIZING_ROUTINE          pfnBufferSize;
    USER_MARSHAL_MARSHALLING_ROUTINE     pfnMarshall;
    USER_MARSHAL_UNMARSHALLING_ROUTINE   pfnUnmarshall;
    USER_MARSHAL_FREEING_ROUTINE         pfnFree;
    } USER_MARSHAL_ROUTINE_QUADRUPLE;

typedef struct _USER_MARSHAL_CB
{
    unsigned long       Flags;
    PMIDL_STUB_MESSAGE  pStubMsg;
    PFORMAT_STRING      pReserve;
} USER_MARSHAL_CB;









typedef struct _MALLOC_FREE_STRUCT
    {
    void  *    ( __stdcall * pfnAllocate)(size_t);
    void                ( __stdcall * pfnFree)(void  *);
    } MALLOC_FREE_STRUCT;

typedef struct _COMM_FAULT_OFFSETS
    {
    short       CommOffset;
    short       FaultOffset;
    } COMM_FAULT_OFFSETS;





typedef struct _MIDL_STUB_DESC
    {

    void  *    RpcInterfaceInformation;

    void  *    ( __stdcall * pfnAllocate)(size_t);
    void                ( __stdcall * pfnFree)(void  *);

    union
        {
        handle_t  *            pAutoHandle;
        handle_t  *            pPrimitiveHandle;
        PGENERIC_BINDING_INFO           pGenericBindingInfo;
        } IMPLICIT_HANDLE_INFO;

    const NDR_RUNDOWN  *                   apfnNdrRundownRoutines;
    const GENERIC_BINDING_ROUTINE_PAIR  *  aGenericBindingRoutinePairs;

    const EXPR_EVAL  *                     apfnExprEval;

    const XMIT_ROUTINE_QUINTUPLE  *        aXmitQuintuple;

    const unsigned char  *                 pFormatTypes;

    int                                             fCheckBounds;

    
    unsigned long                                   Version;

    



    MALLOC_FREE_STRUCT  *                  pMallocFreeStruct;

    long                                MIDLVersion;

    const COMM_FAULT_OFFSETS  *    CommFaultOffsets;

    

    const USER_MARSHAL_ROUTINE_QUADRUPLE  * aUserMarshalQuadruple;

    long                                    Reserved1;
    long                                    Reserved2;
    long                                    Reserved3;
    long                                    Reserved4;
    long                                    Reserved5;

    } MIDL_STUB_DESC;

typedef const MIDL_STUB_DESC  * PMIDL_STUB_DESC;

typedef void  * PMIDL_XMIT_TYPE;





#pragma warning( disable:4200 )
#line 1146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"
typedef struct _MIDL_FORMAT_STRING
    {
    short               Pad;
    unsigned char       Format[];
    } MIDL_FORMAT_STRING;

#pragma warning( default:4200 )
#line 1154 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"




typedef void ( __stdcall * STUB_THUNK)( PMIDL_STUB_MESSAGE );

typedef long ( __stdcall * SERVER_ROUTINE)();




typedef struct  _MIDL_SERVER_INFO_
    {
    PMIDL_STUB_DESC             pStubDesc;
    const SERVER_ROUTINE *      DispatchTable;
    PFORMAT_STRING              ProcString;
    const unsigned short *      FmtStringOffset;
    const STUB_THUNK *          ThunkTable;
    PFORMAT_STRING              LocalFormatTypes;
    PFORMAT_STRING              LocalProcString;
    const unsigned short *      LocalFmtStringOffset;
    } MIDL_SERVER_INFO, *PMIDL_SERVER_INFO;




typedef struct _MIDL_STUBLESS_PROXY_INFO
    {
    PMIDL_STUB_DESC                     pStubDesc;
    PFORMAT_STRING                      ProcFormatString;
    const unsigned short  *    FormatStringOffset;
    PFORMAT_STRING                      LocalFormatTypes;
    PFORMAT_STRING                      LocalProcString;
    const unsigned short  *    LocalFmtStringOffset;
    } MIDL_STUBLESS_PROXY_INFO;

typedef MIDL_STUBLESS_PROXY_INFO  * PMIDL_STUBLESS_PROXY_INFO;




typedef union _CLIENT_CALL_RETURN
    {
    void  *        Pointer;
    long                    Simple;
    } CLIENT_CALL_RETURN;





typedef enum
        {
        XLAT_SERVER = 1,
        XLAT_CLIENT
        } XLAT_SIDE;





typedef struct _FULL_PTR_TO_REFID_ELEMENT
    {
    struct _FULL_PTR_TO_REFID_ELEMENT  *  Next;

    void  *            Pointer;
    unsigned long       RefId;
    unsigned char       State;
    } FULL_PTR_TO_REFID_ELEMENT,  *PFULL_PTR_TO_REFID_ELEMENT;




typedef struct _FULL_PTR_XLAT_TABLES
    {
    


    struct
        {
        void  * *             XlatTable;
        unsigned char  *     StateTable;
        unsigned long       NumberOfEntries;
        } RefIdToPointer;

    


    struct
        {
        PFULL_PTR_TO_REFID_ELEMENT  *  XlatTable;
        unsigned long                   NumberOfBuckets;
        unsigned long                   HashMask;
        } PointerToRefId;

    


    unsigned long           NextRefId;

    






    XLAT_SIDE               XlatSide;
    } FULL_PTR_XLAT_TABLES,  *PFULL_PTR_XLAT_TABLES;









__declspec(dllimport)
void
__stdcall
NdrSimpleTypeMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    unsigned char                       FormatChar
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrPointerMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrSimpleStructMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStructMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingStructMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrHardStructMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexStructMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrFixedArrayMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantArrayMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingArrayMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrVaryingArrayMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexArrayMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonConformantStringMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStringMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrEncapsulatedUnionMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonEncapsulatedUnionMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrByteCountPointerMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrXmitOrRepAsMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrInterfacePointerMarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrClientContextMarshall(
    PMIDL_STUB_MESSAGE    pStubMsg,
    NDR_CCONTEXT          ContextHandle,
    int                   fCheck
    );

__declspec(dllimport)
void
__stdcall
NdrServerContextMarshall(
    PMIDL_STUB_MESSAGE    pStubMsg,
    NDR_SCONTEXT          ContextHandle,
    NDR_RUNDOWN           RundownRoutine
    );





__declspec(dllimport)
void
__stdcall
NdrSimpleTypeUnmarshall(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    unsigned char                       FormatChar
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrPointerUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrSimpleStructUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStructUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingStructUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrHardStructUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexStructUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrFixedArrayUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantArrayUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingArrayUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrVaryingArrayUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexArrayUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonConformantStringUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStringUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrEncapsulatedUnionUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonEncapsulatedUnionUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrByteCountPointerUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrXmitOrRepAsUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrInterfacePointerUnmarshall(
    PMIDL_STUB_MESSAGE                      pStubMsg,
    unsigned char  *  *   ppMemory,
    PFORMAT_STRING                          pFormat,
    unsigned char                           fMustAlloc
    );



__declspec(dllimport)
void
__stdcall
NdrClientContextUnmarshall(
    PMIDL_STUB_MESSAGE          pStubMsg,
    NDR_CCONTEXT  *    pContextHandle,
    RPC_BINDING_HANDLE          BindHandle
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NdrServerContextUnmarshall(
    PMIDL_STUB_MESSAGE          pStubMsg
    );





__declspec(dllimport)
void
__stdcall
NdrPointerBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrSimpleStructBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantStructBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingStructBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrHardStructBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexStructBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrFixedArrayBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantArrayBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingArrayBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrVaryingArrayBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexArrayBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrConformantStringBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonConformantStringBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrEncapsulatedUnionBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonEncapsulatedUnionBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrByteCountPointerBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrXmitOrRepAsBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrUserMarshalBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrInterfacePointerBufferSize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrContextHandleSize(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );





__declspec(dllimport)
unsigned long
__stdcall
NdrPointerMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrSimpleStructMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantStructMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantVaryingStructMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrHardStructMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrComplexStructMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrFixedArrayMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantArrayMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantVaryingArrayMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrVaryingArrayMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrComplexArrayMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrConformantStringMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrNonConformantStringMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrEncapsulatedUnionMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrNonEncapsulatedUnionMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrXmitOrRepAsMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrUserMarshalMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrInterfacePointerMemorySize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrPointerFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrSimpleStructFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantStructFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingStructFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrHardStructFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexStructFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrFixedArrayFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantArrayFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingArrayFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrVaryingArrayFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexArrayFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrEncapsulatedUnionFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonEncapsulatedUnionFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrByteCountPointerFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrXmitOrRepAsFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrUserMarshalFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrInterfacePointerFree(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pMemory,
    PFORMAT_STRING                      pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrConvert2(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat,
    long                                NumberParams
    );

__declspec(dllimport)
void
__stdcall
NdrConvert(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pFormat
    );














__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalSimpleTypeConvert(
    unsigned long * pFlags,
    unsigned char * pBuffer,
    unsigned char   FormatChar
    );





__declspec(dllimport)
void
__stdcall
NdrClientInitializeNew(
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor,
    unsigned int                        ProcNum
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitializeNew(
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor
    );

__declspec(dllimport)
void
__stdcall
NdrServerInitializePartial(
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor,
    unsigned long                       RequestedBufferSize
    );

__declspec(dllimport)
void
__stdcall
NdrClientInitialize(
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor,
    unsigned int                        ProcNum
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitialize(
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitializeUnmarshall (
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PMIDL_STUB_DESC                     pStubDescriptor,
    PRPC_MESSAGE                        pRpcMsg
    );

__declspec(dllimport)
void
__stdcall
NdrServerInitializeMarshall (
    PRPC_MESSAGE                        pRpcMsg,
    PMIDL_STUB_MESSAGE                  pStubMsg
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrGetBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned long                       BufferLength,
    RPC_BINDING_HANDLE                  Handle
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNsGetBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned long                       BufferLength,
    RPC_BINDING_HANDLE                  Handle
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrGetPipeBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned long                       BufferLength,
    RPC_BINDING_HANDLE                  Handle );

__declspec(dllimport)
void
__stdcall
NdrGetPartialBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrSendReceive(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char *            pBufferEnd
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNsSendReceive(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char  *           pBufferEnd,
    RPC_BINDING_HANDLE  *      pAutoHandle
    );

__declspec(dllimport)
void
__stdcall
NdrPipeSendReceive(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PNDR_PIPE_DESC                      pPipeDesc
    );

__declspec(dllimport)
void
__stdcall
NdrFreeBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
NdrGetDcomProtocolVersion( 
    PMIDL_STUB_MESSAGE   pStubMsg,
    RPC_VERSION *        pVersion );






__declspec(dllimport)
void
__stdcall
NdrPipesInitialize(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    PFORMAT_STRING                      pParamDesc,
    PNDR_PIPE_DESC                      pPipeDesc,
    PNDR_PIPE_MESSAGE                   pPipeMsg,
    char              *        pStackTop,
    unsigned long                       NumberParams );

__declspec(dllimport)
void
__stdcall
NdrPipePull(
    char           *           pState,
    void           *           buf,
    unsigned long                       esize,
    unsigned long  *           ecount );

__declspec(dllimport)
void
__stdcall
NdrPipePush(
    char           *           pState,
    void           *           buf,
    unsigned long                       ecount );

__declspec(dllimport)
void
__stdcall
NdrIsAppDoneWithPipes(
    PNDR_PIPE_DESC                      pPipeDesc
    );

__declspec(dllimport)
void
__stdcall
NdrPipesDone(
    PMIDL_STUB_MESSAGE                  pStubMsg
    );








CLIENT_CALL_RETURN __cdecl
NdrClientCall2(
    PMIDL_STUB_DESC                     pStubDescriptor,
    PFORMAT_STRING                      pFormat,
    ...
    );

CLIENT_CALL_RETURN __cdecl
NdrClientCall(
    PMIDL_STUB_DESC                     pStubDescriptor,
    PFORMAT_STRING                      pFormat,
    ...
    );

CLIENT_CALL_RETURN __cdecl
NdrAsyncClientCall(
    PMIDL_STUB_DESC     pStubDescriptor,
    PFORMAT_STRING      pFormat,
    ...
    );


typedef enum {
    STUB_UNMARSHAL,
    STUB_CALL_SERVER,
    STUB_MARSHAL,
    STUB_CALL_SERVER_NO_HRESULT
}STUB_PHASE;

typedef enum {
    PROXY_CALCSIZE,
    PROXY_GETBUFFER,
    PROXY_MARSHAL,
    PROXY_SENDRECEIVE,
    PROXY_UNMARSHAL
}PROXY_PHASE;

struct IRpcStubBuffer;      

__declspec(dllimport)
long
__stdcall
NdrAsyncStubCall(
    struct IRpcStubBuffer *             pThis,
    struct IRpcChannelBuffer *          pChannel,
    PRPC_MESSAGE                        pRpcMsg,
    unsigned long *                     pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrAsyncServerCall(
    PRPC_MESSAGE                        pRpcMsg
    );

__declspec(dllimport)
long
__stdcall
NdrStubCall2(
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                         pRpcMsg,
    unsigned long  *            pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrServerCall2(
    PRPC_MESSAGE                        pRpcMsg
    );

__declspec(dllimport)
long
__stdcall
NdrStubCall (
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                         pRpcMsg,
    unsigned long  *            pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrServerCall(
    PRPC_MESSAGE                        pRpcMsg
    );

__declspec(dllimport)
int
__stdcall
NdrServerUnmarshall(
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                         pRpcMsg,
    PMIDL_STUB_MESSAGE                   pStubMsg,
    PMIDL_STUB_DESC                      pStubDescriptor,
    PFORMAT_STRING                       pFormat,
    void  *                     pParamList
    );

__declspec(dllimport)
void
__stdcall
NdrServerMarshall(
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PMIDL_STUB_MESSAGE                   pStubMsg,
    PFORMAT_STRING                       pFormat
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
NdrMapCommAndFaultStatus(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned long  *                       pCommStatus,
    unsigned long  *                       pFaultStatus,
    RPC_STATUS                          Status
    );



__declspec(dllimport)
int
__stdcall
NdrSH_UPDecision(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    RPC_BUFPTR                          pBuffer
    );

__declspec(dllimport)
int
__stdcall
NdrSH_TLUPDecision(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem
    );

__declspec(dllimport)
int
__stdcall
NdrSH_TLUPDecisionBuffer(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAlloc(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAllocRef(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAllocSet(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_IfCopy(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_IfAllocCopy(
    PMIDL_STUB_MESSAGE                  pStubMsg,
    unsigned char            * *          pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrSH_Copy(
    unsigned char            *         pStubMsg,
    unsigned char            *         pPtrInMem,
    unsigned long                       Count
    );

__declspec(dllimport)
void
__stdcall
NdrSH_IfFree(
    PMIDL_STUB_MESSAGE                  pMessage,
    unsigned char            *         pPtr );


__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_StringMarshall(
    PMIDL_STUB_MESSAGE                  pMessage,
    unsigned char            *         pMemory,
    unsigned long                       Count,
    int                                 Size );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_StringUnMarshall(
    PMIDL_STUB_MESSAGE                  pMessage,
    unsigned char            * *          pMemory,
    int                                 Size );





typedef void  * RPC_SS_THREAD_HANDLE;

typedef void  * __stdcall
RPC_CLIENT_ALLOC (
     size_t Size
    );

typedef void __stdcall
RPC_CLIENT_FREE (
     void  * Ptr
    );





__declspec(dllimport)
void  *
__stdcall
RpcSsAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
RpcSsDisableAllocate (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsEnableAllocate (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsFree (
     void  * NodeToFree
    );

__declspec(dllimport)
RPC_SS_THREAD_HANDLE
__stdcall
RpcSsGetThreadHandle (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsSetClientAllocFree (
     RPC_CLIENT_ALLOC  * ClientAlloc,
     RPC_CLIENT_FREE  * ClientFree
    );

__declspec(dllimport)
void
__stdcall
RpcSsSetThreadHandle (
     RPC_SS_THREAD_HANDLE Id
    );

__declspec(dllimport)
void
__stdcall
RpcSsSwapClientAllocFree (
     RPC_CLIENT_ALLOC  * ClientAlloc,
     RPC_CLIENT_FREE  * ClientFree,
     RPC_CLIENT_ALLOC  *  * OldClientAlloc,
     RPC_CLIENT_FREE  *  * OldClientFree
    );





__declspec(dllimport)
void  *
__stdcall
RpcSmAllocate (
      size_t          Size,
     RPC_STATUS  *    pStatus
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmClientFree (
      void  * pNodeToFree
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmDestroyClientContext (
     void  *  * ContextHandle
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmDisableAllocate (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmEnableAllocate (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmFree (
     void  * NodeToFree
    );

__declspec(dllimport)
RPC_SS_THREAD_HANDLE
__stdcall
RpcSmGetThreadHandle (
     RPC_STATUS  *    pStatus
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSetClientAllocFree (
     RPC_CLIENT_ALLOC  * ClientAlloc,
     RPC_CLIENT_FREE  * ClientFree
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSetThreadHandle (
     RPC_SS_THREAD_HANDLE Id
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSwapClientAllocFree (
     RPC_CLIENT_ALLOC  * ClientAlloc,
     RPC_CLIENT_FREE  * ClientFree,
     RPC_CLIENT_ALLOC  *  * OldClientAlloc,
     RPC_CLIENT_FREE  *  * OldClientFree
    );





__declspec(dllimport)
void
__stdcall
NdrRpcSsEnableAllocate(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void
__stdcall
NdrRpcSsDisableAllocate(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void
__stdcall
NdrRpcSmSetClientToOsf(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void  *
__stdcall
NdrRpcSmClientAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrRpcSmClientFree (
     void  * NodeToFree
    );

__declspec(dllimport)
void  *
__stdcall
NdrRpcSsDefaultAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrRpcSsDefaultFree (
     void  * NodeToFree
    );









__declspec(dllimport)
PFULL_PTR_XLAT_TABLES
__stdcall
NdrFullPointerXlatInit(
    unsigned long           NumberOfPointers,
    XLAT_SIDE               XlatSide
    );

__declspec(dllimport)
void
__stdcall
NdrFullPointerXlatFree(
    PFULL_PTR_XLAT_TABLES   pXlatTables
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerQueryPointer(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    void  *                    pPointer,
    unsigned char           QueryType,
    unsigned long  *           pRefId
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerQueryRefId(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    unsigned long           RefId,
    unsigned char           QueryType,
    void  * *                 ppPointer
    );

__declspec(dllimport)
void
__stdcall
NdrFullPointerInsertRefId(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    unsigned long           RefId,
    void  *                    pPointer
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerFree(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    void  *                    Pointer
    );

__declspec(dllimport)
void  *
__stdcall
NdrAllocate(
    PMIDL_STUB_MESSAGE      pStubMsg,
    size_t                  Len
    );

__declspec(dllimport)
void
__stdcall
NdrClearOutParameters(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat,
    void  *        ArgAddr
    );






__declspec(dllimport)
void  *
__stdcall
NdrOleAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrOleFree (
     void  * NodeToFree
    );





#line 3037 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"











#line 3049 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"






#line 3056 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"




}
#line 3062 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"





#line 3068 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"

#line 3070 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"






#line 14 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"




#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"























#pragma warning(disable:4103)

#pragma pack(push)
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#pragma pack(8)


#line 32 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 33 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\pshpack8.h"
#line 19 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"






















































#line 74 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"

#line 76 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"










































































































#line 185 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
   
   
#line 188 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 189 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"









































#line 231 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"












#line 244 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 245 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"








#line 254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 255 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"








#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
















#pragma once
#line 19 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"






#line 26 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







#pragma pack(push,8)
#line 35 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


extern "C" {
#line 39 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


















#line 58 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"










































typedef int (__cdecl * _onexit_t)(void);



#line 105 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 107 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"






typedef struct _div_t {
        int quot;
        int rem;
} div_t;

typedef struct _ldiv_t {
        long quot;
        long rem;
} ldiv_t;


#line 125 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"



































#line 161 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

















#line 179 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 extern int errno;               
 extern unsigned long _doserrno; 
#line 182 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







 extern char * _sys_errlist[];   
 extern int _sys_nerr;           





























#line 221 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 extern int __argc;          
 extern char ** __argv;      

 extern wchar_t ** __wargv;  
#line 227 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 extern char ** _environ;    

 extern wchar_t ** _wenviron;    
#line 235 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 236 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 extern char * _pgmptr;      

 extern wchar_t * _wpgmptr;  
#line 241 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 243 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


 extern int _fmode;          
 extern int _fileinfo;       




 extern unsigned int _osver;
 extern unsigned int _winver;
 extern unsigned int _winmajor;
 extern unsigned int _winminor;





 __declspec(noreturn) void   __cdecl abort(void);
 __declspec(noreturn) void   __cdecl exit(int);



#line 266 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"



#line 270 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        int    __cdecl abs(int);
#line 272 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        int    __cdecl atexit(void (__cdecl *)(void));
 double __cdecl atof(const char *);
 int    __cdecl atoi(const char *);
 long   __cdecl atol(const char *);



 void * __cdecl bsearch(const void *, const void *, size_t, size_t,
        int (__cdecl *)(const void *, const void *));
 void * __cdecl calloc(size_t, size_t);
 div_t  __cdecl div(int, int);
 void   __cdecl free(void *);
 char * __cdecl getenv(const char *);
 char * __cdecl _itoa(int, char *, int);

 char * __cdecl _i64toa(__int64, char *, int);
 char * __cdecl _ui64toa(unsigned __int64, char *, int);
 __int64 __cdecl _atoi64(const char *);
#line 291 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 294 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        long __cdecl labs(long);
#line 296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 ldiv_t __cdecl ldiv(long, long);
 char * __cdecl _ltoa(long, char *, int);
 void * __cdecl malloc(size_t);
 int    __cdecl mblen(const char *, size_t);
 size_t __cdecl _mbstrlen(const char *s);
 int    __cdecl mbtowc(wchar_t *, const char *, size_t);
 size_t __cdecl mbstowcs(wchar_t *, const char *, size_t);
 void   __cdecl qsort(void *, size_t, size_t, int (__cdecl *)
        (const void *, const void *));
 int    __cdecl rand(void);
 void * __cdecl realloc(void *, size_t);
 int    __cdecl _set_error_mode(int);
 void   __cdecl srand(unsigned int);
 double __cdecl strtod(const char *, char **);
 long   __cdecl strtol(const char *, char **, int);



 unsigned long __cdecl strtoul(const char *, char **, int);

 int    __cdecl system(const char *);
#line 318 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 char * __cdecl _ultoa(unsigned long, char *, int);
 int    __cdecl wctomb(char *, wchar_t);
 size_t __cdecl wcstombs(char *, const wchar_t *, size_t);







 wchar_t * __cdecl _itow (int, wchar_t *, int);
 wchar_t * __cdecl _ltow (long, wchar_t *, int);
 wchar_t * __cdecl _ultow (unsigned long, wchar_t *, int);
 double __cdecl wcstod(const wchar_t *, wchar_t **);
 long   __cdecl wcstol(const wchar_t *, wchar_t **, int);
 unsigned long __cdecl wcstoul(const wchar_t *, wchar_t **, int);
 wchar_t * __cdecl _wgetenv(const wchar_t *);
 int    __cdecl _wsystem(const wchar_t *);
 int __cdecl _wtoi(const wchar_t *);
 long __cdecl _wtol(const wchar_t *);

 wchar_t * __cdecl _i64tow(__int64, wchar_t *, int);
 wchar_t * __cdecl _ui64tow(unsigned __int64, wchar_t *, int);
 __int64   __cdecl _wtoi64(const wchar_t *);
#line 343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 346 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 char * __cdecl _ecvt(double, int, int *, int *);

 __declspec(noreturn) void   __cdecl _exit(int);


#line 357 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 char * __cdecl _fcvt(double, int, int *, int *);
 char * __cdecl _fullpath(char *, const char *, size_t);
 char * __cdecl _gcvt(double, int, char *);
        unsigned long __cdecl _lrotl(unsigned long, int);
        unsigned long __cdecl _lrotr(unsigned long, int);

 void   __cdecl _makepath(char *, const char *, const char *, const char *,
        const char *);
#line 366 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
        _onexit_t __cdecl _onexit(_onexit_t);
 void   __cdecl perror(const char *);
 int    __cdecl _putenv(const char *);
        unsigned int __cdecl _rotl(unsigned int, int);
        unsigned int __cdecl _rotr(unsigned int, int);
 void   __cdecl _searchenv(const char *, const char *, char *);

 void   __cdecl _splitpath(const char *, char *, char *, char *, char *);
#line 375 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
 void   __cdecl _swab(char *, char *, int);






 wchar_t * __cdecl _wfullpath(wchar_t *, const wchar_t *, size_t);
 void   __cdecl _wmakepath(wchar_t *, const wchar_t *, const wchar_t *, const wchar_t *,
        const wchar_t *);
 void   __cdecl _wperror(const wchar_t *);
 int    __cdecl _wputenv(const wchar_t *);
 void   __cdecl _wsearchenv(const wchar_t *, const wchar_t *, wchar_t *);
 void   __cdecl _wsplitpath(const wchar_t *, wchar_t *, wchar_t *, wchar_t *, wchar_t *);


#line 392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 393 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"




 void __cdecl _seterrormode(int);
 void __cdecl _beep(unsigned, unsigned);
 void __cdecl _sleep(unsigned long);
#line 401 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#line 404 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"







 int __cdecl tolower(int);
#line 413 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

 int __cdecl toupper(int);
#line 416 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 418 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

















 char * __cdecl ecvt(double, int, int *, int *);
 char * __cdecl fcvt(double, int, int *, int *);
 char * __cdecl gcvt(double, int, char *);
 char * __cdecl itoa(int, char *, int);
 char * __cdecl ltoa(long, char *, int);
        _onexit_t __cdecl onexit(_onexit_t);
 int    __cdecl putenv(const char *);
 void   __cdecl swab(char *, char *, int);
 char * __cdecl ultoa(unsigned long, char *, int);

#line 446 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 448 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


}

#line 453 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"


#pragma pack(pop)
#line 457 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"

#line 459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\stdlib.h"
#line 264 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"




















#line 285 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"





#line 291 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"



typedef enum tagREGCLS
{
    REGCLS_SINGLEUSE = 0,       
    REGCLS_MULTIPLEUSE = 1,     
                                
    REGCLS_MULTI_SEPARATE = 2,  
                                
    REGCLS_SUSPENDED      = 4,  
                                
    REGCLS_SURROGATE      = 8   
                                
                                
} REGCLS;
































#line 340 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"



























typedef struct    IRpcStubBuffer     IRpcStubBuffer;
typedef struct    IRpcChannelBuffer  IRpcChannelBuffer;

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 20 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"





extern "C"{
#line 28 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

 

void  * __stdcall MIDL_user_allocate(size_t);
void __stdcall MIDL_user_free( void  * ); 






 










extern RPC_IF_HANDLE __MIDL_itf_wtypes_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wtypes_0000_v0_0_s_ifspec;









 


typedef struct  tagRemHGLOBAL
    {
    long fNullHGlobal;
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHGLOBAL;

typedef struct  tagRemHMETAFILEPICT
    {
    long mm;
    long xExt;
    long yExt;
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHMETAFILEPICT;

typedef struct  tagRemHENHMETAFILE
    {
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHENHMETAFILE;

typedef struct  tagRemHBITMAP
    {
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHBITMAP;

typedef struct  tagRemHPALETTE
    {
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHPALETTE;

typedef struct  tagRemBRUSH
    {
    unsigned long cbData;
     byte data[ 1 ];
    }	RemHBRUSH;

































































































































































































































#line 329 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

typedef WCHAR OLECHAR;

typedef  OLECHAR  *LPOLESTR;

typedef  const OLECHAR  *LPCOLESTR;









#line 345 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
























typedef unsigned char UCHAR;

typedef short SHORT;

typedef unsigned short USHORT;

typedef DWORD ULONG;

typedef double DOUBLE;






























#line 409 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
















































































typedef struct  _COAUTHIDENTITY
    {
     USHORT  *User;
    ULONG UserLength;
     USHORT  *Domain;
    ULONG DomainLength;
     USHORT  *Password;
    ULONG PasswordLength;
    ULONG Flags;
    }	COAUTHIDENTITY;

typedef struct  _COAUTHINFO
    {
    DWORD dwAuthnSvc;
    DWORD dwAuthzSvc;
    LPWSTR pwszServerPrincName;
    DWORD dwAuthnLevel;
    DWORD dwImpersonationLevel;
    COAUTHIDENTITY  *pAuthIdentityData;
    DWORD dwCapabilities;
    }	COAUTHINFO;

typedef LONG SCODE;






typedef SCODE  *PSCODE;














typedef GUID  *LPGUID;

#line 536 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"












typedef GUID IID;

typedef IID  *LPIID;



typedef GUID CLSID;

typedef CLSID  *LPCLSID;



typedef GUID FMTID;

typedef FMTID  *LPFMTID;












#line 576 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"




#line 581 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"



#line 585 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"



#line 589 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"



#line 593 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

















#line 611 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
#line 612 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef 
enum tagMEMCTX
    {	MEMCTX_TASK	= 1,
	MEMCTX_SHARED	= 2,
	MEMCTX_MACSYSTEM	= 3,
	MEMCTX_UNKNOWN	= -1,
	MEMCTX_SAME	= -2
    }	MEMCTX;





#line 626 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"



#line 630 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef 
enum tagCLSCTX
    {	CLSCTX_INPROC_SERVER	= 0x1,
	CLSCTX_INPROC_HANDLER	= 0x2,
	CLSCTX_LOCAL_SERVER	= 0x4,
	CLSCTX_INPROC_SERVER16	= 0x8,
	CLSCTX_REMOTE_SERVER	= 0x10,
	CLSCTX_INPROC_HANDLER16	= 0x20,
	CLSCTX_INPROC_SERVERX86	= 0x40,
	CLSCTX_INPROC_HANDLERX86	= 0x80,
	CLSCTX_ESERVER_HANDLER	= 0x100
    }	CLSCTX;

typedef 
enum tagMSHLFLAGS
    {	MSHLFLAGS_NORMAL	= 0,
	MSHLFLAGS_TABLESTRONG	= 1,
	MSHLFLAGS_TABLEWEAK	= 2,
	MSHLFLAGS_NOPING	= 4
    }	MSHLFLAGS;

typedef 
enum tagMSHCTX
    {	MSHCTX_LOCAL	= 0,
	MSHCTX_NOSHAREDMEM	= 1,
	MSHCTX_DIFFERENTMACHINE	= 2,
	MSHCTX_INPROC	= 3
    }	MSHCTX;

typedef 
enum tagDVASPECT
    {	DVASPECT_CONTENT	= 1,
	DVASPECT_THUMBNAIL	= 2,
	DVASPECT_ICON	= 4,
	DVASPECT_DOCPRINT	= 8
    }	DVASPECT;

typedef 
enum tagSTGC
    {	STGC_DEFAULT	= 0,
	STGC_OVERWRITE	= 1,
	STGC_ONLYIFCURRENT	= 2,
	STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE	= 4,
	STGC_CONSOLIDATE	= 8
    }	STGC;

typedef 
enum tagSTGMOVE
    {	STGMOVE_MOVE	= 0,
	STGMOVE_COPY	= 1,
	STGMOVE_SHALLOWCOPY	= 2
    }	STGMOVE;

typedef 
enum tagSTATFLAG
    {	STATFLAG_DEFAULT	= 0,
	STATFLAG_NONAME	= 1,
	STATFLAG_NOOPEN	= 2
    }	STATFLAG;

typedef  void  *HCONTEXT;



typedef DWORD LCID;

#line 697 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef struct  _BYTE_BLOB
    {
    unsigned long clSize;
     byte abData[ 1 ];
    }	BYTE_BLOB;

typedef  BYTE_BLOB  *UP_BYTE_BLOB;

typedef struct  _WORD_BLOB
    {
    unsigned long clSize;
     unsigned short asData[ 1 ];
    }	WORD_BLOB;

typedef  WORD_BLOB  *UP_WORD_BLOB;

typedef struct  _DWORD_BLOB
    {
    unsigned long clSize;
     unsigned long alData[ 1 ];
    }	DWORD_BLOB;

typedef  DWORD_BLOB  *UP_DWORD_BLOB;

typedef struct  _FLAGGED_BYTE_BLOB
    {
    unsigned long fFlags;
    unsigned long clSize;
     byte abData[ 1 ];
    }	FLAGGED_BYTE_BLOB;

typedef  FLAGGED_BYTE_BLOB  *UP_FLAGGED_BYTE_BLOB;

typedef struct  _FLAGGED_WORD_BLOB
    {
    unsigned long fFlags;
    unsigned long clSize;
     unsigned short asData[ 1 ];
    }	FLAGGED_WORD_BLOB;

typedef  FLAGGED_WORD_BLOB  *UP_FLAGGED_WORD_BLOB;

typedef struct  _BYTE_SIZEDARR
    {
    unsigned long clSize;
     byte  *pData;
    }	BYTE_SIZEDARR;

typedef struct  _SHORT_SIZEDARR
    {
    unsigned long clSize;
     unsigned short  *pData;
    }	WORD_SIZEDARR;

typedef struct  _LONG_SIZEDARR
    {
    unsigned long clSize;
     unsigned long  *pData;
    }	DWORD_SIZEDARR;

typedef struct  _HYPER_SIZEDARR
    {
    unsigned long clSize;
     __int64  *pData;
    }	HYPER_SIZEDARR;





typedef struct  _userCLIPFORMAT
    {
    long fContext;
      union __MIDL_IWinTypes_0001
        {
         DWORD dwValue;
         wchar_t  *pwszName;
        }	u;
    }	userCLIPFORMAT;

typedef  userCLIPFORMAT  *wireCLIPFORMAT;

typedef  WORD CLIPFORMAT;

typedef struct  _GDI_NONREMOTE
    {
    long fContext;
      union __MIDL_IWinTypes_0002
        {
         long hInproc;
         DWORD_BLOB  *hRemote;
        }	u;
    }	GDI_NONREMOTE;

typedef struct  _userHGLOBAL
    {
    long fContext;
      union __MIDL_IWinTypes_0003
        {
         long hInproc;
         FLAGGED_BYTE_BLOB  *hRemote;
         long hGlobal;
        }	u;
    }	userHGLOBAL;

typedef  userHGLOBAL  *wireHGLOBAL;

typedef struct  _userHMETAFILE
    {
    long fContext;
      union __MIDL_IWinTypes_0004
        {
         long hInproc;
         BYTE_BLOB  *hRemote;
         long hGlobal;
        }	u;
    }	userHMETAFILE;

typedef struct  _remoteMETAFILEPICT
    {
    long mm;
    long xExt;
    long yExt;
    userHMETAFILE  *hMF;
    }	remoteMETAFILEPICT;

typedef struct  _userHMETAFILEPICT
    {
    long fContext;
      union __MIDL_IWinTypes_0005
        {
         long hInproc;
         remoteMETAFILEPICT  *hRemote;
         long hGlobal;
        }	u;
    }	userHMETAFILEPICT;

typedef struct  _userHENHMETAFILE
    {
    long fContext;
      union __MIDL_IWinTypes_0006
        {
         long hInproc;
         BYTE_BLOB  *hRemote;
         long hGlobal;
        }	u;
    }	userHENHMETAFILE;

typedef struct  _userBITMAP
    {
    LONG bmType;
    LONG bmWidth;
    LONG bmHeight;
    LONG bmWidthBytes;
    WORD bmPlanes;
    WORD bmBitsPixel;
    ULONG cbSize;
     byte pBuffer[ 1 ];
    }	userBITMAP;

typedef struct  _userHBITMAP
    {
    long fContext;
      union __MIDL_IWinTypes_0007
        {
         long hInproc;
         userBITMAP  *hRemote;
         long hGlobal;
        }	u;
    }	userHBITMAP;

typedef struct  tagrpcLOGPALETTE
    {
    WORD palVersion;
    WORD palNumEntries;
     PALETTEENTRY palPalEntry[ 1 ];
    }	rpcLOGPALETTE;

typedef struct  _userHPALETTE
    {
    long fContext;
      union __MIDL_IWinTypes_0008
        {
         long hInproc;
         rpcLOGPALETTE  *hRemote;
         long hGlobal;
        }	u;
    }	userHPALETTE;

typedef struct  _RemotableHandle
    {
    long fContext;
      union __MIDL_IWinTypes_0009
        {
         long hInproc;
         long hRemote;
        }	u;
    }	RemotableHandle;

typedef  RemotableHandle  *wireHWND;

typedef  RemotableHandle  *wireHMENU;

typedef  RemotableHandle  *wireHACCEL;

typedef  RemotableHandle  *wireHBRUSH;

typedef  RemotableHandle  *wireHFONT;

typedef  RemotableHandle  *wireHDC;

typedef  RemotableHandle  *wireHICON;














































#line 956 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"




















typedef  userHBITMAP  *wireHBITMAP;

typedef  userHPALETTE  *wireHPALETTE;

typedef  userHENHMETAFILE  *wireHENHMETAFILE;

typedef  userHMETAFILE  *wireHMETAFILE;

typedef  userHMETAFILEPICT  *wireHMETAFILEPICT;














#line 1000 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef  void  *HMETAFILEPICT;



extern RPC_IF_HANDLE IWinTypes_v0_1_c_ifspec;
extern RPC_IF_HANDLE IWinTypes_v0_1_s_ifspec;
#line 1007 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"






 



#pragma warning(disable:4201)
#line 1019 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef double DATE;












#line 1033 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

typedef union tagCY {
    struct {




        unsigned long Lo;
        long      Hi;
#line 1043 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
    };
    LONGLONG int64;
} CY;
#line 1047 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
#line 1048 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef CY  *LPCY;













#line 1063 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

typedef struct tagDEC {
    USHORT wReserved;
    union {
        struct {
            BYTE scale;
            BYTE sign;
        };
        USHORT signscale;
    };
    ULONG Hi32;
    union {
        struct {




            ULONG Lo32;
            ULONG Mid32;
#line 1083 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
        };
        ULONGLONG Lo64;
    };
} DECIMAL;



#line 1091 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef DECIMAL  *LPDECIMAL;


#pragma warning(default:4201)
#line 1096 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef  FLAGGED_WORD_BLOB  *wireBSTR;

typedef  OLECHAR  *BSTR;

typedef BSTR  *LPBSTR;


typedef short VARIANT_BOOL;





#line 1110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"


#line 1113 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef boolean BOOLEAN;






typedef struct  tagBSTRBLOB
    {
    ULONG cbSize;
     BYTE  *pData;
    }	BSTRBLOB;

typedef struct tagBSTRBLOB  *LPBSTRBLOB;

#line 1129 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"






typedef struct  tagBLOB
    {
    ULONG cbSize;
     BYTE  *pBlobData;
    }	BLOB;

typedef struct tagBLOB  *LPBLOB;

#line 1144 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
typedef struct  tagCLIPDATA
    {
    ULONG cbSize;
    long ulClipFmt;
     BYTE  *pClipData;
    }	CLIPDATA;



typedef unsigned short VARTYPE;

























































enum VARENUM
    {	VT_EMPTY	= 0,
	VT_NULL	= 1,
	VT_I2	= 2,
	VT_I4	= 3,
	VT_R4	= 4,
	VT_R8	= 5,
	VT_CY	= 6,
	VT_DATE	= 7,
	VT_BSTR	= 8,
	VT_DISPATCH	= 9,
	VT_ERROR	= 10,
	VT_BOOL	= 11,
	VT_VARIANT	= 12,
	VT_UNKNOWN	= 13,
	VT_DECIMAL	= 14,
	VT_I1	= 16,
	VT_UI1	= 17,
	VT_UI2	= 18,
	VT_UI4	= 19,
	VT_I8	= 20,
	VT_UI8	= 21,
	VT_INT	= 22,
	VT_UINT	= 23,
	VT_VOID	= 24,
	VT_HRESULT	= 25,
	VT_PTR	= 26,
	VT_SAFEARRAY	= 27,
	VT_CARRAY	= 28,
	VT_USERDEFINED	= 29,
	VT_LPSTR	= 30,
	VT_LPWSTR	= 31,
	VT_RECORD	= 36,
	VT_FILETIME	= 64,
	VT_BLOB	= 65,
	VT_STREAM	= 66,
	VT_STORAGE	= 67,
	VT_STREAMED_OBJECT	= 68,
	VT_STORED_OBJECT	= 69,
	VT_BLOB_OBJECT	= 70,
	VT_CF	= 71,
	VT_CLSID	= 72,
	VT_BSTR_BLOB	= 0xfff,
	VT_VECTOR	= 0x1000,
	VT_ARRAY	= 0x2000,
	VT_BYREF	= 0x4000,
	VT_RESERVED	= 0x8000,
	VT_ILLEGAL	= 0xffff,
	VT_ILLEGALMASKED	= 0xfff,
	VT_TYPEMASK	= 0xfff
    };
typedef ULONG PROPID;
























typedef GUID APPID;

typedef struct  tagCSPLATFORM
    {
    DWORD dwPlatformId;
    DWORD dwVersionHi;
    DWORD dwVersionLo;
    DWORD dwProcessorArch;
    }	CSPLATFORM;

typedef struct  tagQUERYCONTEXT
    {
    DWORD dwContext;
    CSPLATFORM Platform;
    LCID Locale;
    DWORD dwVersionHi;
    DWORD dwVersionLo;
    }	QUERYCONTEXT;

typedef  
enum tagTYSPEC
    {	TYSPEC_CLSID	= 0,
	TYSPEC_FILEEXT	= TYSPEC_CLSID + 1,
	TYSPEC_MIMETYPE	= TYSPEC_FILEEXT + 1,
	TYSPEC_PROGID	= TYSPEC_MIMETYPE + 1,
	TYSPEC_IID	= TYSPEC_PROGID + 1,
	TYSPEC_TYPELIB	= TYSPEC_IID + 1,
	TYSPEC_FILENAME	= TYSPEC_TYPELIB + 1,
	TYSPEC_JAVACLASS	= TYSPEC_FILENAME + 1,
	TYSPEC_PACKAGENAME	= TYSPEC_JAVACLASS + 1
    }	TYSPEC;

typedef  struct  __MIDL___MIDL_itf_wtypes_0001_0001
    {
    DWORD tyspec;
      union __MIDL___MIDL_itf_wtypes_0001_0003
        {
         CLSID clsid;
         IID iid;
         GUID typelibID;
         LPOLESTR pFileExt;
         LPOLESTR pMimeType;
         LPOLESTR pProgId;
         LPOLESTR pFileName;
         LPOLESTR pJavaClassName;
         LPOLESTR pPackageName;
        }	tagged_union;
    }	uCLSSPEC;

typedef struct  _PUBLISHEDAPPINFO
    {
    LPOLESTR pwszFileExtension;
    LPOLESTR pwszDisplayName;
    LPOLESTR pwszPackagePath;
    }	PUBLISHEDAPPINFO;

typedef  
enum tagAPPINFOTYPE
    {	APPINFO_PUBLISHED	= 1,
	APPINFO_SHELLNEW	= APPINFO_PUBLISHED + 1,
	APPINFO_INSERTABLE	= APPINFO_SHELLNEW + 1
    }	APPINFOTYPE;













typedef  
enum _CLASSPATHTYPE
    {	ExeNamePath	= 0,
	DllNamePath	= ExeNamePath + 1,
	TlbNamePath	= DllNamePath + 1,
	CabFilePath	= TlbNamePath + 1,
	InfFilePath	= CabFilePath + 1,
	DrwFilePath	= InfFilePath + 1,
	SetupNamePath	= DrwFilePath + 1
    }	CLASSPATHTYPE;

typedef struct  tagAPPDETAIL
    {
    GUID AppID;
    DWORD cClasses;
     CLSID  *prgClsIdList;
    DWORD cTypeLibIds;
     CLSID  *prgTypeLibIdList;
    DWORD cServers;
     LPOLESTR  *prgServerNames;
    }	APPDETAIL;

typedef struct  tagPACKAGEDETAIL
    {
    CLASSPATHTYPE PathType;
    LPOLESTR pszPath;
    LPOLESTR pszIconPath;
    LPOLESTR pszSetupCommand;
    DWORD dwActFlags;
    LPOLESTR pszVendor;
    LPOLESTR pszPackageName;
    LPOLESTR pszProductName;
    DWORD dwContext;
    CSPLATFORM Platform;
    LCID Locale;
    DWORD dwVersionHi;
    DWORD dwVersionLo;
    ULONGLONG Usn;
    DWORD cApps;
     APPDETAIL  *pAppDetail;
    }	PACKAGEDETAIL;

typedef struct  tagPACKAGEINFO
    {
    LPOLESTR pszClassIconPath;
    CLSID  *pTreatAsClsid;
    DWORD cPackages;
     PACKAGEDETAIL  *pPackageDetail;
    }	PACKAGEINFO;



extern RPC_IF_HANDLE __MIDL_itf_wtypes_0001_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wtypes_0001_v0_0_s_ifspec;






}
#line 1424 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"

#line 1426 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
#line 371 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"


















#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 20 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"







#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"







































































































































































































































































































































































































































#line 425 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"

#line 29 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"





extern "C"{
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

 



typedef struct IUnknown IUnknown;
#line 44 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"




typedef struct IClassFactory IClassFactory;
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"



#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"


















#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 20 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\wtypes.h"





























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 54 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

void  * __stdcall MIDL_user_allocate(size_t);
void __stdcall MIDL_user_free( void  * ); 






 










extern RPC_IF_HANDLE __MIDL_itf_unknwn_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_unknwn_0000_v0_0_s_ifspec;









 


typedef  IUnknown  *LPUNKNOWN;






extern "C" const IID IID_IUnknown;




extern "C++"
{
#line 103 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

    struct __declspec(uuid("00000000-0000-0000-C000-000000000046")) __declspec(novtable)
	IUnknown
    {
    public:
        
        virtual HRESULT __stdcall QueryInterface( 
             const IID & riid,
             void  * *ppvObject) = 0;
        
        virtual ULONG __stdcall AddRef( void) = 0;
        
        virtual ULONG __stdcall Release( void) = 0;


		template <class Q>
		HRESULT __stdcall QueryInterface(Q** pp)
		{
			return QueryInterface(__uuidof(Q), (void**)pp);
		}
#line 124 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

        
    };


} 
#line 131 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
    










































#line 175 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

HRESULT __stdcall IUnknown_QueryInterface_Proxy( 
    IUnknown  * This,
     const IID & riid,
     void  * *ppvObject);


void __stdcall IUnknown_QueryInterface_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


ULONG __stdcall IUnknown_AddRef_Proxy( 
    IUnknown  * This);


void __stdcall IUnknown_AddRef_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


ULONG __stdcall IUnknown_Release_Proxy( 
    IUnknown  * This);


void __stdcall IUnknown_Release_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 213 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"










 


typedef  IClassFactory  *LPCLASSFACTORY;


extern "C" const IID IID_IClassFactory;


    
    struct __declspec(uuid("00000001-0000-0000-C000-000000000046")) __declspec(novtable)
    IClassFactory : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall CreateInstance( 
             IUnknown  *pUnkOuter,
             const IID & riid,
             void  * *ppvObject) = 0;
        
        virtual  HRESULT __stdcall LockServer( 
             BOOL fLock) = 0;
        
    };
    



























































#line 307 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"



 HRESULT __stdcall IClassFactory_RemoteCreateInstance_Proxy( 
    IClassFactory  * This,
     const IID & riid,
     IUnknown  * *ppvObject);


void __stdcall IClassFactory_RemoteCreateInstance_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IClassFactory_RemoteLockServer_Proxy( 
    IClassFactory  * This,
     BOOL fLock);


void __stdcall IClassFactory_RemoteLockServer_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 337 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"




 HRESULT __stdcall IClassFactory_CreateInstance_Proxy( 
    IClassFactory  * This,
     IUnknown  *pUnkOuter,
     const IID & riid,
     void  * *ppvObject);


 HRESULT __stdcall IClassFactory_CreateInstance_Stub( 
    IClassFactory  * This,
     const IID & riid,
     IUnknown  * *ppvObject);

 HRESULT __stdcall IClassFactory_LockServer_Proxy( 
    IClassFactory  * This,
     BOOL fLock);


 HRESULT __stdcall IClassFactory_LockServer_Stub( 
    IClassFactory  * This,
     BOOL fLock);






}
#line 369 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"

#line 371 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
#line 372 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objbase.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"


















#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 20 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"







#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"







































































































































































































































































































































































































































#line 425 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"

#line 29 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"





extern "C"{
#line 37 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"

 



typedef struct IMarshal IMarshal;
#line 44 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IMalloc IMalloc;
#line 50 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IMallocSpy IMallocSpy;
#line 56 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IStdMarshalInfo IStdMarshalInfo;
#line 62 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IExternalConnection IExternalConnection;
#line 68 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IMultiQI IMultiQI;
#line 74 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumUnknown IEnumUnknown;
#line 80 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IBindCtx IBindCtx;
#line 86 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumMoniker IEnumMoniker;
#line 92 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRunnableObject IRunnableObject;
#line 98 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRunningObjectTable IRunningObjectTable;
#line 104 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPersist IPersist;
#line 110 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPersistStream IPersistStream;
#line 116 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IMoniker IMoniker;
#line 122 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IROTData IROTData;
#line 128 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumString IEnumString;
#line 134 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ISequentialStream ISequentialStream;
#line 140 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IStream IStream;
#line 146 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumSTATSTG IEnumSTATSTG;
#line 152 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IStorage IStorage;
#line 158 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPersistFile IPersistFile;
#line 164 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPersistStorage IPersistStorage;
#line 170 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ILockBytes ILockBytes;
#line 176 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumFORMATETC IEnumFORMATETC;
#line 182 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumSTATDATA IEnumSTATDATA;
#line 188 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRootStorage IRootStorage;
#line 194 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IAdviseSink IAdviseSink;
#line 200 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IAdviseSink2 IAdviseSink2;
#line 206 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IDataObject IDataObject;
#line 212 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IDataAdviseHolder IDataAdviseHolder;
#line 218 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IMessageFilter IMessageFilter;
#line 224 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcChannelBuffer IRpcChannelBuffer;
#line 230 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcChannelBuffer2 IRpcChannelBuffer2;
#line 236 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcChannelBuffer3 IRpcChannelBuffer3;
#line 242 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcProxyBuffer IRpcProxyBuffer;
#line 248 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcStubBuffer IRpcStubBuffer;
#line 254 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPSFactoryBuffer IPSFactoryBuffer;
#line 260 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IChannelHook IChannelHook;
#line 266 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPropertyStorage IPropertyStorage;
#line 272 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IPropertySetStorage IPropertySetStorage;
#line 278 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumSTATPROPSTG IEnumSTATPROPSTG;
#line 284 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumSTATPROPSETSTG IEnumSTATPROPSETSTG;
#line 290 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IClientSecurity IClientSecurity;
#line 296 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IServerSecurity IServerSecurity;
#line 302 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IClassActivator IClassActivator;
#line 308 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IRpcOptions IRpcOptions;
#line 314 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IComBinding IComBinding;
#line 320 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IFillLockBytes IFillLockBytes;
#line 326 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IProgressNotify IProgressNotify;
#line 332 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ILayoutStorage ILayoutStorage;
#line 338 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ISurrogate ISurrogate;
#line 344 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IGlobalInterfaceTable IGlobalInterfaceTable;
#line 350 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IDirectWriterLock IDirectWriterLock;
#line 356 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ISynchronize ISynchronize;
#line 362 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ISynchronizeMutex ISynchronizeMutex;
#line 368 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IAsyncSetup IAsyncSetup;
#line 374 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ICancelMethodCalls ICancelMethodCalls;
#line 380 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IAsyncManager IAsyncManager;
#line 386 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IWaitMultiple IWaitMultiple;
#line 392 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct ISynchronizeEvent ISynchronizeEvent;
#line 398 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IUrlMon IUrlMon;
#line 404 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IClassAccess IClassAccess;
#line 410 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IClassRefresh IClassRefresh;
#line 416 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumPackage IEnumPackage;
#line 422 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IEnumClass IEnumClass;
#line 428 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"




typedef struct IClassAdmin IClassAdmin;
#line 434 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"


















#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"
















#line 18 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpc.h"





































































































































































































#line 20 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\rpcndr.h"



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"







#line 1 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"







































































































































































































































































































































































































































#line 425 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\ole2.h"

#line 29 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"
#line 30 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\unknwn.h"





















































































































































































































































































































































#line 438 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"

void  * __stdcall MIDL_user_allocate(size_t);
void __stdcall MIDL_user_free( void  * ); 






 









#pragma warning(disable:4201)
#line 459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"











typedef 
enum _SRVINFO
    {	SRVINFO_F_COSERVERINFO	= 0,
	SRVINFO_F_COSERVERINFO2	= 1
    }	SRVINFO;

typedef struct  _COSERVERINFO
    {
    DWORD dwReserved1;
    LPWSTR pwszName;
    COAUTHINFO  *pAuthInfo;
    DWORD dwReserved2;
    }	COSERVERINFO;

typedef struct  _COSERVERINFO2
    {
    DWORD dwFlags;
    LPWSTR pwszName;
    COAUTHINFO  *pAuthInfo;
    IUnknown  * *ppCall;
    LPWSTR pwszCodeURL;
    DWORD dwFileVersionMS;
    DWORD dwFileVersionLS;
    LPWSTR pwszContentType;
    }	COSERVERINFO2;



extern RPC_IF_HANDLE __MIDL_itf_objidl_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_objidl_0000_v0_0_s_ifspec;









 


typedef  IMarshal  *LPMARSHAL;


extern "C" const IID IID_IMarshal;


    
    struct __declspec(uuid("00000003-0000-0000-C000-000000000046")) __declspec(novtable)
    IMarshal : public IUnknown
    {
    public:
        virtual HRESULT __stdcall GetUnmarshalClass( 
             const IID & riid,
             void  *pv,
             DWORD dwDestContext,
             void  *pvDestContext,
             DWORD mshlflags,
             CLSID  *pCid) = 0;
        
        virtual HRESULT __stdcall GetMarshalSizeMax( 
             const IID & riid,
             void  *pv,
             DWORD dwDestContext,
             void  *pvDestContext,
             DWORD mshlflags,
             DWORD  *pSize) = 0;
        
        virtual HRESULT __stdcall MarshalInterface( 
             IStream  *pStm,
             const IID & riid,
             void  *pv,
             DWORD dwDestContext,
             void  *pvDestContext,
             DWORD mshlflags) = 0;
        
        virtual HRESULT __stdcall UnmarshalInterface( 
             IStream  *pStm,
             const IID & riid,
             void  * *ppv) = 0;
        
        virtual HRESULT __stdcall ReleaseMarshalData( 
             IStream  *pStm) = 0;
        
        virtual HRESULT __stdcall DisconnectObject( 
             DWORD dwReserved) = 0;
        
    };
    






































































































#line 663 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IMarshal_GetUnmarshalClass_Proxy( 
    IMarshal  * This,
     const IID & riid,
     void  *pv,
     DWORD dwDestContext,
     void  *pvDestContext,
     DWORD mshlflags,
     CLSID  *pCid);


void __stdcall IMarshal_GetUnmarshalClass_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMarshal_GetMarshalSizeMax_Proxy( 
    IMarshal  * This,
     const IID & riid,
     void  *pv,
     DWORD dwDestContext,
     void  *pvDestContext,
     DWORD mshlflags,
     DWORD  *pSize);


void __stdcall IMarshal_GetMarshalSizeMax_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMarshal_MarshalInterface_Proxy( 
    IMarshal  * This,
     IStream  *pStm,
     const IID & riid,
     void  *pv,
     DWORD dwDestContext,
     void  *pvDestContext,
     DWORD mshlflags);


void __stdcall IMarshal_MarshalInterface_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMarshal_UnmarshalInterface_Proxy( 
    IMarshal  * This,
     IStream  *pStm,
     const IID & riid,
     void  * *ppv);


void __stdcall IMarshal_UnmarshalInterface_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMarshal_ReleaseMarshalData_Proxy( 
    IMarshal  * This,
     IStream  *pStm);


void __stdcall IMarshal_ReleaseMarshalData_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMarshal_DisconnectObject_Proxy( 
    IMarshal  * This,
     DWORD dwReserved);


void __stdcall IMarshal_DisconnectObject_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 757 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IMalloc  *LPMALLOC;


extern "C" const IID IID_IMalloc;


    
    struct __declspec(uuid("00000002-0000-0000-C000-000000000046")) __declspec(novtable)
    IMalloc : public IUnknown
    {
    public:
        virtual void  *__stdcall Alloc( 
             ULONG cb) = 0;
        
        virtual void  *__stdcall Realloc( 
             void  *pv,
             ULONG cb) = 0;
        
        virtual void __stdcall Free( 
             void  *pv) = 0;
        
        virtual ULONG __stdcall GetSize( 
             void  *pv) = 0;
        
        virtual int __stdcall DidAlloc( 
            void  *pv) = 0;
        
        virtual void __stdcall HeapMinimize( void) = 0;
        
    };
    





















































































#line 887 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



void  *__stdcall IMalloc_Alloc_Proxy( 
    IMalloc  * This,
     ULONG cb);


void __stdcall IMalloc_Alloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMalloc_Realloc_Proxy( 
    IMalloc  * This,
     void  *pv,
     ULONG cb);


void __stdcall IMalloc_Realloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void __stdcall IMalloc_Free_Proxy( 
    IMalloc  * This,
     void  *pv);


void __stdcall IMalloc_Free_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


ULONG __stdcall IMalloc_GetSize_Proxy( 
    IMalloc  * This,
     void  *pv);


void __stdcall IMalloc_GetSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


int __stdcall IMalloc_DidAlloc_Proxy( 
    IMalloc  * This,
    void  *pv);


void __stdcall IMalloc_DidAlloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void __stdcall IMalloc_HeapMinimize_Proxy( 
    IMalloc  * This);


void __stdcall IMalloc_HeapMinimize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 964 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IMallocSpy  *LPMALLOCSPY;


extern "C" const IID IID_IMallocSpy;


    
    struct __declspec(uuid("0000001d-0000-0000-C000-000000000046")) __declspec(novtable)
    IMallocSpy : public IUnknown
    {
    public:
        virtual ULONG __stdcall PreAlloc( 
             ULONG cbRequest) = 0;
        
        virtual void  *__stdcall PostAlloc( 
             void  *pActual) = 0;
        
        virtual void  *__stdcall PreFree( 
             void  *pRequest,
             BOOL fSpyed) = 0;
        
        virtual void __stdcall PostFree( 
             BOOL fSpyed) = 0;
        
        virtual ULONG __stdcall PreRealloc( 
             void  *pRequest,
             ULONG cbRequest,
             void  * *ppNewRequest,
             BOOL fSpyed) = 0;
        
        virtual void  *__stdcall PostRealloc( 
             void  *pActual,
             BOOL fSpyed) = 0;
        
        virtual void  *__stdcall PreGetSize( 
             void  *pRequest,
             BOOL fSpyed) = 0;
        
        virtual ULONG __stdcall PostGetSize( 
             ULONG cbActual,
             BOOL fSpyed) = 0;
        
        virtual void  *__stdcall PreDidAlloc( 
             void  *pRequest,
             BOOL fSpyed) = 0;
        
        virtual int __stdcall PostDidAlloc( 
             void  *pRequest,
             BOOL fSpyed,
             int fActual) = 0;
        
        virtual void __stdcall PreHeapMinimize( void) = 0;
        
        virtual void __stdcall PostHeapMinimize( void) = 0;
        
    };
    







































































































































#line 1170 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



ULONG __stdcall IMallocSpy_PreAlloc_Proxy( 
    IMallocSpy  * This,
     ULONG cbRequest);


void __stdcall IMallocSpy_PreAlloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMallocSpy_PostAlloc_Proxy( 
    IMallocSpy  * This,
     void  *pActual);


void __stdcall IMallocSpy_PostAlloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMallocSpy_PreFree_Proxy( 
    IMallocSpy  * This,
     void  *pRequest,
     BOOL fSpyed);


void __stdcall IMallocSpy_PreFree_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void __stdcall IMallocSpy_PostFree_Proxy( 
    IMallocSpy  * This,
     BOOL fSpyed);


void __stdcall IMallocSpy_PostFree_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


ULONG __stdcall IMallocSpy_PreRealloc_Proxy( 
    IMallocSpy  * This,
     void  *pRequest,
     ULONG cbRequest,
     void  * *ppNewRequest,
     BOOL fSpyed);


void __stdcall IMallocSpy_PreRealloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMallocSpy_PostRealloc_Proxy( 
    IMallocSpy  * This,
     void  *pActual,
     BOOL fSpyed);


void __stdcall IMallocSpy_PostRealloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMallocSpy_PreGetSize_Proxy( 
    IMallocSpy  * This,
     void  *pRequest,
     BOOL fSpyed);


void __stdcall IMallocSpy_PreGetSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


ULONG __stdcall IMallocSpy_PostGetSize_Proxy( 
    IMallocSpy  * This,
     ULONG cbActual,
     BOOL fSpyed);


void __stdcall IMallocSpy_PostGetSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void  *__stdcall IMallocSpy_PreDidAlloc_Proxy( 
    IMallocSpy  * This,
     void  *pRequest,
     BOOL fSpyed);


void __stdcall IMallocSpy_PreDidAlloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


int __stdcall IMallocSpy_PostDidAlloc_Proxy( 
    IMallocSpy  * This,
     void  *pRequest,
     BOOL fSpyed,
     int fActual);


void __stdcall IMallocSpy_PostDidAlloc_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void __stdcall IMallocSpy_PreHeapMinimize_Proxy( 
    IMallocSpy  * This);


void __stdcall IMallocSpy_PreHeapMinimize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


void __stdcall IMallocSpy_PostHeapMinimize_Proxy( 
    IMallocSpy  * This);


void __stdcall IMallocSpy_PostHeapMinimize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 1327 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IStdMarshalInfo  *LPSTDMARSHALINFO;


extern "C" const IID IID_IStdMarshalInfo;


    
    struct __declspec(uuid("00000018-0000-0000-C000-000000000046")) __declspec(novtable)
    IStdMarshalInfo : public IUnknown
    {
    public:
        virtual HRESULT __stdcall GetClassForHandler( 
             DWORD dwDestContext,
             void  *pvDestContext,
             CLSID  *pClsid) = 0;
        
    };
    




















































#line 1411 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IStdMarshalInfo_GetClassForHandler_Proxy( 
    IStdMarshalInfo  * This,
     DWORD dwDestContext,
     void  *pvDestContext,
     CLSID  *pClsid);


void __stdcall IStdMarshalInfo_GetClassForHandler_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 1430 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IExternalConnection  *LPEXTERNALCONNECTION;

typedef 
enum tagEXTCONN
    {	EXTCONN_STRONG	= 0x1,
	EXTCONN_WEAK	= 0x2,
	EXTCONN_CALLABLE	= 0x4
    }	EXTCONN;


extern "C" const IID IID_IExternalConnection;


    
    struct __declspec(uuid("00000019-0000-0000-C000-000000000046")) __declspec(novtable)
    IExternalConnection : public IUnknown
    {
    public:
        virtual DWORD __stdcall AddConnection( 
             DWORD extconn,
             DWORD reserved) = 0;
        
        virtual DWORD __stdcall ReleaseConnection( 
             DWORD extconn,
             DWORD reserved,
             BOOL fLastReleaseCloses) = 0;
        
    };
    




























































#line 1533 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



DWORD __stdcall IExternalConnection_AddConnection_Proxy( 
    IExternalConnection  * This,
     DWORD extconn,
     DWORD reserved);


void __stdcall IExternalConnection_AddConnection_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


DWORD __stdcall IExternalConnection_ReleaseConnection_Proxy( 
    IExternalConnection  * This,
     DWORD extconn,
     DWORD reserved,
     BOOL fLastReleaseCloses);


void __stdcall IExternalConnection_ReleaseConnection_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 1565 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IMultiQI  *LPMULTIQI;

typedef struct  tagMULTI_QI
    {
    const IID  *pIID;
    IUnknown  *pItf;
    HRESULT hr;
    }	MULTI_QI;


extern "C" const IID IID_IMultiQI;


    
    struct __declspec(uuid("00000020-0000-0000-C000-000000000046")) __declspec(novtable)
    IMultiQI : public IUnknown
    {
    public:
        virtual HRESULT __stdcall QueryMultipleInterfaces( 
             ULONG cMQIs,
             MULTI_QI  *pMQIs) = 0;
        
    };
    



















































#line 1654 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IMultiQI_QueryMultipleInterfaces_Proxy( 
    IMultiQI  * This,
     ULONG cMQIs,
     MULTI_QI  *pMQIs);


void __stdcall IMultiQI_QueryMultipleInterfaces_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 1672 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IEnumUnknown  *LPENUMUNKNOWN;


extern "C" const IID IID_IEnumUnknown;


    
    struct __declspec(uuid("00000100-0000-0000-C000-000000000046")) __declspec(novtable)
    IEnumUnknown : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall Next( 
             ULONG celt,
             IUnknown  * *rgelt,
             ULONG  *pceltFetched) = 0;
        
        virtual HRESULT __stdcall Skip( 
             ULONG celt) = 0;
        
        virtual HRESULT __stdcall Reset( void) = 0;
        
        virtual HRESULT __stdcall Clone( 
             IEnumUnknown  * *ppenum) = 0;
        
    };
    








































































#line 1784 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IEnumUnknown_RemoteNext_Proxy( 
    IEnumUnknown  * This,
     ULONG celt,
     IUnknown  * *rgelt,
     ULONG  *pceltFetched);


void __stdcall IEnumUnknown_RemoteNext_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumUnknown_Skip_Proxy( 
    IEnumUnknown  * This,
     ULONG celt);


void __stdcall IEnumUnknown_Skip_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumUnknown_Reset_Proxy( 
    IEnumUnknown  * This);


void __stdcall IEnumUnknown_Reset_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumUnknown_Clone_Proxy( 
    IEnumUnknown  * This,
     IEnumUnknown  * *ppenum);


void __stdcall IEnumUnknown_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 1838 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IBindCtx  *LPBC;

typedef  IBindCtx  *LPBINDCTX;

typedef struct  tagBIND_OPTS
    {
    DWORD cbStruct;
    DWORD grfFlags;
    DWORD grfMode;
    DWORD dwTickCountDeadline;
    }	BIND_OPTS;

typedef struct tagBIND_OPTS  *LPBIND_OPTS;


    typedef struct tagBIND_OPTS2 : tagBIND_OPTS{
    DWORD           dwTrackFlags;
    DWORD           dwClassContext;
    LCID            locale;
    COSERVERINFO *  pServerInfo;
    } BIND_OPTS2, * LPBIND_OPTS2;















#line 1888 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"
typedef 
enum tagBIND_FLAGS
    {	BIND_MAYBOTHERUSER	= 1,
	BIND_JUSTTESTEXISTENCE	= 2
    }	BIND_FLAGS;


extern "C" const IID IID_IBindCtx;


    
    struct __declspec(uuid("0000000e-0000-0000-C000-000000000046")) __declspec(novtable)
    IBindCtx : public IUnknown
    {
    public:
        virtual HRESULT __stdcall RegisterObjectBound( 
             IUnknown  *punk) = 0;
        
        virtual HRESULT __stdcall RevokeObjectBound( 
             IUnknown  *punk) = 0;
        
        virtual HRESULT __stdcall ReleaseBoundObjects( void) = 0;
        
        virtual  HRESULT __stdcall SetBindOptions( 
             BIND_OPTS  *pbindopts) = 0;
        
        virtual  HRESULT __stdcall GetBindOptions( 
             BIND_OPTS  *pbindopts) = 0;
        
        virtual HRESULT __stdcall GetRunningObjectTable( 
             IRunningObjectTable  * *pprot) = 0;
        
        virtual HRESULT __stdcall RegisterObjectParam( 
             LPOLESTR pszKey,
             IUnknown  *punk) = 0;
        
        virtual HRESULT __stdcall GetObjectParam( 
             LPOLESTR pszKey,
             IUnknown  * *ppunk) = 0;
        
        virtual HRESULT __stdcall EnumObjectParam( 
             IEnumString  * *ppenum) = 0;
        
        virtual HRESULT __stdcall RevokeObjectParam( 
             LPOLESTR pszKey) = 0;
        
    };
    


















































































































#line 2051 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IBindCtx_RegisterObjectBound_Proxy( 
    IBindCtx  * This,
     IUnknown  *punk);


void __stdcall IBindCtx_RegisterObjectBound_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_RevokeObjectBound_Proxy( 
    IBindCtx  * This,
     IUnknown  *punk);


void __stdcall IBindCtx_RevokeObjectBound_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_ReleaseBoundObjects_Proxy( 
    IBindCtx  * This);


void __stdcall IBindCtx_ReleaseBoundObjects_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IBindCtx_RemoteSetBindOptions_Proxy( 
    IBindCtx  * This,
     BIND_OPTS2  *pbindopts);


void __stdcall IBindCtx_RemoteSetBindOptions_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IBindCtx_RemoteGetBindOptions_Proxy( 
    IBindCtx  * This,
     BIND_OPTS2  *pbindopts);


void __stdcall IBindCtx_RemoteGetBindOptions_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_GetRunningObjectTable_Proxy( 
    IBindCtx  * This,
     IRunningObjectTable  * *pprot);


void __stdcall IBindCtx_GetRunningObjectTable_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_RegisterObjectParam_Proxy( 
    IBindCtx  * This,
     LPOLESTR pszKey,
     IUnknown  *punk);


void __stdcall IBindCtx_RegisterObjectParam_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_GetObjectParam_Proxy( 
    IBindCtx  * This,
     LPOLESTR pszKey,
     IUnknown  * *ppunk);


void __stdcall IBindCtx_GetObjectParam_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_EnumObjectParam_Proxy( 
    IBindCtx  * This,
     IEnumString  * *ppenum);


void __stdcall IBindCtx_EnumObjectParam_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IBindCtx_RevokeObjectParam_Proxy( 
    IBindCtx  * This,
     LPOLESTR pszKey);


void __stdcall IBindCtx_RevokeObjectParam_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 2177 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IEnumMoniker  *LPENUMMONIKER;


extern "C" const IID IID_IEnumMoniker;


    
    struct __declspec(uuid("00000102-0000-0000-C000-000000000046")) __declspec(novtable)
    IEnumMoniker : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall Next( 
             ULONG celt,
             IMoniker  * *rgelt,
             ULONG  *pceltFetched) = 0;
        
        virtual HRESULT __stdcall Skip( 
             ULONG celt) = 0;
        
        virtual HRESULT __stdcall Reset( void) = 0;
        
        virtual HRESULT __stdcall Clone( 
             IEnumMoniker  * *ppenum) = 0;
        
    };
    








































































#line 2289 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IEnumMoniker_RemoteNext_Proxy( 
    IEnumMoniker  * This,
     ULONG celt,
     IMoniker  * *rgelt,
     ULONG  *pceltFetched);


void __stdcall IEnumMoniker_RemoteNext_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumMoniker_Skip_Proxy( 
    IEnumMoniker  * This,
     ULONG celt);


void __stdcall IEnumMoniker_Skip_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumMoniker_Reset_Proxy( 
    IEnumMoniker  * This);


void __stdcall IEnumMoniker_Reset_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumMoniker_Clone_Proxy( 
    IEnumMoniker  * This,
     IEnumMoniker  * *ppenum);


void __stdcall IEnumMoniker_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 2343 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IRunnableObject  *LPRUNNABLEOBJECT;


extern "C" const IID IID_IRunnableObject;


    
    struct __declspec(uuid("00000126-0000-0000-C000-000000000046")) __declspec(novtable)
    IRunnableObject : public IUnknown
    {
    public:
        virtual HRESULT __stdcall GetRunningClass( 
             LPCLSID lpClsid) = 0;
        
        virtual HRESULT __stdcall Run( 
             LPBINDCTX pbc) = 0;
        
        virtual  BOOL __stdcall IsRunning( void) = 0;
        
        virtual HRESULT __stdcall LockRunning( 
             BOOL fLock,
             BOOL fLastUnlockCloses) = 0;
        
        virtual HRESULT __stdcall SetContainedObject( 
             BOOL fContained) = 0;
        
    };
    














































































#line 2463 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IRunnableObject_GetRunningClass_Proxy( 
    IRunnableObject  * This,
     LPCLSID lpClsid);


void __stdcall IRunnableObject_GetRunningClass_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunnableObject_Run_Proxy( 
    IRunnableObject  * This,
     LPBINDCTX pbc);


void __stdcall IRunnableObject_Run_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IRunnableObject_RemoteIsRunning_Proxy( 
    IRunnableObject  * This);


void __stdcall IRunnableObject_RemoteIsRunning_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunnableObject_LockRunning_Proxy( 
    IRunnableObject  * This,
     BOOL fLock,
     BOOL fLastUnlockCloses);


void __stdcall IRunnableObject_LockRunning_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunnableObject_SetContainedObject_Proxy( 
    IRunnableObject  * This,
     BOOL fContained);


void __stdcall IRunnableObject_SetContainedObject_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 2528 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IRunningObjectTable  *LPRUNNINGOBJECTTABLE;


extern "C" const IID IID_IRunningObjectTable;


    
    struct __declspec(uuid("00000010-0000-0000-C000-000000000046")) __declspec(novtable)
    IRunningObjectTable : public IUnknown
    {
    public:
        virtual HRESULT __stdcall Register( 
             DWORD grfFlags,
             IUnknown  *punkObject,
             IMoniker  *pmkObjectName,
             DWORD  *pdwRegister) = 0;
        
        virtual HRESULT __stdcall Revoke( 
             DWORD dwRegister) = 0;
        
        virtual HRESULT __stdcall IsRunning( 
             IMoniker  *pmkObjectName) = 0;
        
        virtual HRESULT __stdcall GetObjectW( 
             IMoniker  *pmkObjectName,
             IUnknown  * *ppunkObject) = 0;
        
        virtual HRESULT __stdcall NoteChangeTime( 
             DWORD dwRegister,
             FILETIME  *pfiletime) = 0;
        
        virtual HRESULT __stdcall GetTimeOfLastChange( 
             IMoniker  *pmkObjectName,
             FILETIME  *pfiletime) = 0;
        
        virtual HRESULT __stdcall EnumRunning( 
             IEnumMoniker  * *ppenumMoniker) = 0;
        
    };
    


































































































#line 2680 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IRunningObjectTable_Register_Proxy( 
    IRunningObjectTable  * This,
     DWORD grfFlags,
     IUnknown  *punkObject,
     IMoniker  *pmkObjectName,
     DWORD  *pdwRegister);


void __stdcall IRunningObjectTable_Register_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_Revoke_Proxy( 
    IRunningObjectTable  * This,
     DWORD dwRegister);


void __stdcall IRunningObjectTable_Revoke_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_IsRunning_Proxy( 
    IRunningObjectTable  * This,
     IMoniker  *pmkObjectName);


void __stdcall IRunningObjectTable_IsRunning_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_GetObject_Proxy( 
    IRunningObjectTable  * This,
     IMoniker  *pmkObjectName,
     IUnknown  * *ppunkObject);


void __stdcall IRunningObjectTable_GetObject_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_NoteChangeTime_Proxy( 
    IRunningObjectTable  * This,
     DWORD dwRegister,
     FILETIME  *pfiletime);


void __stdcall IRunningObjectTable_NoteChangeTime_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_GetTimeOfLastChange_Proxy( 
    IRunningObjectTable  * This,
     IMoniker  *pmkObjectName,
     FILETIME  *pfiletime);


void __stdcall IRunningObjectTable_GetTimeOfLastChange_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IRunningObjectTable_EnumRunning_Proxy( 
    IRunningObjectTable  * This,
     IEnumMoniker  * *ppenumMoniker);


void __stdcall IRunningObjectTable_EnumRunning_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 2775 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IPersist  *LPPERSIST;


extern "C" const IID IID_IPersist;


    
    struct __declspec(uuid("0000010c-0000-0000-C000-000000000046")) __declspec(novtable)
    IPersist : public IUnknown
    {
    public:
        virtual HRESULT __stdcall GetClassID( 
             CLSID  *pClassID) = 0;
        
    };
    


















































#line 2855 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IPersist_GetClassID_Proxy( 
    IPersist  * This,
     CLSID  *pClassID);


void __stdcall IPersist_GetClassID_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 2872 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IPersistStream  *LPPERSISTSTREAM;


extern "C" const IID IID_IPersistStream;


    
    struct __declspec(uuid("00000109-0000-0000-C000-000000000046")) __declspec(novtable)
    IPersistStream : public IPersist
    {
    public:
        virtual HRESULT __stdcall IsDirty( void) = 0;
        
        virtual HRESULT __stdcall Load( 
             IStream  *pStm) = 0;
        
        virtual HRESULT __stdcall Save( 
             IStream  *pStm,
             BOOL fClearDirty) = 0;
        
        virtual HRESULT __stdcall GetSizeMax( 
             ULARGE_INTEGER  *pcbSize) = 0;
        
    };
    















































































#line 2990 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IPersistStream_IsDirty_Proxy( 
    IPersistStream  * This);


void __stdcall IPersistStream_IsDirty_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStream_Load_Proxy( 
    IPersistStream  * This,
     IStream  *pStm);


void __stdcall IPersistStream_Load_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStream_Save_Proxy( 
    IPersistStream  * This,
     IStream  *pStm,
     BOOL fClearDirty);


void __stdcall IPersistStream_Save_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStream_GetSizeMax_Proxy( 
    IPersistStream  * This,
     ULARGE_INTEGER  *pcbSize);


void __stdcall IPersistStream_GetSizeMax_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 3043 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IMoniker  *LPMONIKER;

typedef 
enum tagMKSYS
    {	MKSYS_NONE	= 0,
	MKSYS_GENERICCOMPOSITE	= 1,
	MKSYS_FILEMONIKER	= 2,
	MKSYS_ANTIMONIKER	= 3,
	MKSYS_ITEMMONIKER	= 4,
	MKSYS_POINTERMONIKER	= 5,
	MKSYS_CLASSMONIKER	= 7
    }	MKSYS;

typedef  
enum tagMKREDUCE
    {	MKRREDUCE_ONE	= 3 << 16,
	MKRREDUCE_TOUSER	= 2 << 16,
	MKRREDUCE_THROUGHUSER	= 1 << 16,
	MKRREDUCE_ALL	= 0
    }	MKRREDUCE;


extern "C" const IID IID_IMoniker;


    
    struct __declspec(uuid("0000000f-0000-0000-C000-000000000046")) __declspec(novtable)
    IMoniker : public IPersistStream
    {
    public:
        virtual  HRESULT __stdcall BindToObject( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             const IID & riidResult,
             void  * *ppvResult) = 0;
        
        virtual  HRESULT __stdcall BindToStorage( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             const IID & riid,
             void  * *ppvObj) = 0;
        
        virtual HRESULT __stdcall Reduce( 
             IBindCtx  *pbc,
             DWORD dwReduceHowFar,
             IMoniker  * *ppmkToLeft,
             IMoniker  * *ppmkReduced) = 0;
        
        virtual HRESULT __stdcall ComposeWith( 
             IMoniker  *pmkRight,
             BOOL fOnlyIfNotGeneric,
             IMoniker  * *ppmkComposite) = 0;
        
        virtual HRESULT __stdcall Enum( 
             BOOL fForward,
             IEnumMoniker  * *ppenumMoniker) = 0;
        
        virtual HRESULT __stdcall IsEqual( 
             IMoniker  *pmkOtherMoniker) = 0;
        
        virtual HRESULT __stdcall Hash( 
             DWORD  *pdwHash) = 0;
        
        virtual HRESULT __stdcall IsRunning( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             IMoniker  *pmkNewlyRunning) = 0;
        
        virtual HRESULT __stdcall GetTimeOfLastChange( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             FILETIME  *pFileTime) = 0;
        
        virtual HRESULT __stdcall Inverse( 
             IMoniker  * *ppmk) = 0;
        
        virtual HRESULT __stdcall CommonPrefixWith( 
             IMoniker  *pmkOther,
             IMoniker  * *ppmkPrefix) = 0;
        
        virtual HRESULT __stdcall RelativePathTo( 
             IMoniker  *pmkOther,
             IMoniker  * *ppmkRelPath) = 0;
        
        virtual HRESULT __stdcall GetDisplayName( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             LPOLESTR  *ppszDisplayName) = 0;
        
        virtual HRESULT __stdcall ParseDisplayName( 
             IBindCtx  *pbc,
             IMoniker  *pmkToLeft,
             LPOLESTR pszDisplayName,
             ULONG  *pchEaten,
             IMoniker  * *ppmkOut) = 0;
        
        virtual HRESULT __stdcall IsSystemMoniker( 
             DWORD  *pdwMksys) = 0;
        
    };
    

















































































































































































































#line 3367 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IMoniker_RemoteBindToObject_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     const IID & riidResult,
     IUnknown  * *ppvResult);


void __stdcall IMoniker_RemoteBindToObject_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IMoniker_RemoteBindToStorage_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     const IID & riid,
     IUnknown  * *ppvObj);


void __stdcall IMoniker_RemoteBindToStorage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_Reduce_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     DWORD dwReduceHowFar,
     IMoniker  * *ppmkToLeft,
     IMoniker  * *ppmkReduced);


void __stdcall IMoniker_Reduce_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_ComposeWith_Proxy( 
    IMoniker  * This,
     IMoniker  *pmkRight,
     BOOL fOnlyIfNotGeneric,
     IMoniker  * *ppmkComposite);


void __stdcall IMoniker_ComposeWith_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_Enum_Proxy( 
    IMoniker  * This,
     BOOL fForward,
     IEnumMoniker  * *ppenumMoniker);


void __stdcall IMoniker_Enum_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_IsEqual_Proxy( 
    IMoniker  * This,
     IMoniker  *pmkOtherMoniker);


void __stdcall IMoniker_IsEqual_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_Hash_Proxy( 
    IMoniker  * This,
     DWORD  *pdwHash);


void __stdcall IMoniker_Hash_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_IsRunning_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     IMoniker  *pmkNewlyRunning);


void __stdcall IMoniker_IsRunning_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_GetTimeOfLastChange_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     FILETIME  *pFileTime);


void __stdcall IMoniker_GetTimeOfLastChange_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_Inverse_Proxy( 
    IMoniker  * This,
     IMoniker  * *ppmk);


void __stdcall IMoniker_Inverse_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_CommonPrefixWith_Proxy( 
    IMoniker  * This,
     IMoniker  *pmkOther,
     IMoniker  * *ppmkPrefix);


void __stdcall IMoniker_CommonPrefixWith_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_RelativePathTo_Proxy( 
    IMoniker  * This,
     IMoniker  *pmkOther,
     IMoniker  * *ppmkRelPath);


void __stdcall IMoniker_RelativePathTo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_GetDisplayName_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     LPOLESTR  *ppszDisplayName);


void __stdcall IMoniker_GetDisplayName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_ParseDisplayName_Proxy( 
    IMoniker  * This,
     IBindCtx  *pbc,
     IMoniker  *pmkToLeft,
     LPOLESTR pszDisplayName,
     ULONG  *pchEaten,
     IMoniker  * *ppmkOut);


void __stdcall IMoniker_ParseDisplayName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IMoniker_IsSystemMoniker_Proxy( 
    IMoniker  * This,
     DWORD  *pdwMksys);


void __stdcall IMoniker_IsSystemMoniker_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 3576 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 



extern "C" const IID IID_IROTData;


    
    struct __declspec(uuid("f29f6bc0-5021-11ce-aa15-00006901293f")) __declspec(novtable)
    IROTData : public IUnknown
    {
    public:
        virtual HRESULT __stdcall GetComparisonData( 
             byte  *pbData,
             ULONG cbMax,
             ULONG  *pcbData) = 0;
        
    };
    




















































#line 3658 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IROTData_GetComparisonData_Proxy( 
    IROTData  * This,
     byte  *pbData,
     ULONG cbMax,
     ULONG  *pcbData);


void __stdcall IROTData_GetComparisonData_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 3677 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IEnumString  *LPENUMSTRING;


extern "C" const IID IID_IEnumString;


    
    struct __declspec(uuid("00000101-0000-0000-C000-000000000046")) __declspec(novtable)
    IEnumString : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall Next( 
             ULONG celt,
             LPOLESTR  *rgelt,
             ULONG  *pceltFetched) = 0;
        
        virtual HRESULT __stdcall Skip( 
             ULONG celt) = 0;
        
        virtual HRESULT __stdcall Reset( void) = 0;
        
        virtual HRESULT __stdcall Clone( 
             IEnumString  * *ppenum) = 0;
        
    };
    








































































#line 3789 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IEnumString_RemoteNext_Proxy( 
    IEnumString  * This,
     ULONG celt,
     LPOLESTR  *rgelt,
     ULONG  *pceltFetched);


void __stdcall IEnumString_RemoteNext_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumString_Skip_Proxy( 
    IEnumString  * This,
     ULONG celt);


void __stdcall IEnumString_Skip_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumString_Reset_Proxy( 
    IEnumString  * This);


void __stdcall IEnumString_Reset_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumString_Clone_Proxy( 
    IEnumString  * This,
     IEnumString  * *ppenum);


void __stdcall IEnumString_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 3843 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 



extern "C" const IID IID_ISequentialStream;


    
    struct __declspec(uuid("0c733a30-2a1c-11ce-ade5-00aa0044773d")) __declspec(novtable)
    ISequentialStream : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall Read( 
             void  *pv,
             ULONG cb,
             ULONG  *pcbRead) = 0;
        
        virtual  HRESULT __stdcall Write( 
             const void  *pv,
             ULONG cb,
             ULONG  *pcbWritten) = 0;
        
    };
    





























































#line 3939 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall ISequentialStream_RemoteRead_Proxy( 
    ISequentialStream  * This,
     byte  *pv,
     ULONG cb,
     ULONG  *pcbRead);


void __stdcall ISequentialStream_RemoteRead_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall ISequentialStream_RemoteWrite_Proxy( 
    ISequentialStream  * This,
     const byte  *pv,
     ULONG cb,
     ULONG  *pcbWritten);


void __stdcall ISequentialStream_RemoteWrite_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 3972 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IStream  *LPSTREAM;



















typedef struct  tagSTATSTG
    {
    LPOLESTR pwcsName;
    DWORD type;
    ULARGE_INTEGER cbSize;
    FILETIME mtime;
    FILETIME ctime;
    FILETIME atime;
    DWORD grfMode;
    DWORD grfLocksSupported;
    CLSID clsid;
    DWORD grfStateBits;
    DWORD reserved;
    }	STATSTG;

#line 4021 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"
typedef 
enum tagSTGTY
    {	STGTY_STORAGE	= 1,
	STGTY_STREAM	= 2,
	STGTY_LOCKBYTES	= 3,
	STGTY_PROPERTY	= 4
    }	STGTY;

typedef 
enum tagSTREAM_SEEK
    {	STREAM_SEEK_SET	= 0,
	STREAM_SEEK_CUR	= 1,
	STREAM_SEEK_END	= 2
    }	STREAM_SEEK;

typedef 
enum tagLOCKTYPE
    {	LOCK_WRITE	= 1,
	LOCK_EXCLUSIVE	= 2,
	LOCK_ONLYONCE	= 4
    }	LOCKTYPE;


extern "C" const IID IID_IStream;


    
    struct __declspec(uuid("0000000c-0000-0000-C000-000000000046")) __declspec(novtable)
    IStream : public ISequentialStream
    {
    public:
        virtual  HRESULT __stdcall Seek( 
             LARGE_INTEGER dlibMove,
             DWORD dwOrigin,
             ULARGE_INTEGER  *plibNewPosition) = 0;
        
        virtual HRESULT __stdcall SetSize( 
             ULARGE_INTEGER libNewSize) = 0;
        
        virtual  HRESULT __stdcall CopyTo( 
             IStream  *pstm,
             ULARGE_INTEGER cb,
             ULARGE_INTEGER  *pcbRead,
             ULARGE_INTEGER  *pcbWritten) = 0;
        
        virtual HRESULT __stdcall Commit( 
             DWORD grfCommitFlags) = 0;
        
        virtual HRESULT __stdcall Revert( void) = 0;
        
        virtual HRESULT __stdcall LockRegion( 
             ULARGE_INTEGER libOffset,
             ULARGE_INTEGER cb,
             DWORD dwLockType) = 0;
        
        virtual HRESULT __stdcall UnlockRegion( 
             ULARGE_INTEGER libOffset,
             ULARGE_INTEGER cb,
             DWORD dwLockType) = 0;
        
        virtual HRESULT __stdcall Stat( 
             STATSTG  *pstatstg,
             DWORD grfStatFlag) = 0;
        
        virtual HRESULT __stdcall Clone( 
             IStream  * *ppstm) = 0;
        
    };
    






































































































































#line 4225 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IStream_RemoteSeek_Proxy( 
    IStream  * This,
     LARGE_INTEGER dlibMove,
     DWORD dwOrigin,
     ULARGE_INTEGER  *plibNewPosition);


void __stdcall IStream_RemoteSeek_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_SetSize_Proxy( 
    IStream  * This,
     ULARGE_INTEGER libNewSize);


void __stdcall IStream_SetSize_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IStream_RemoteCopyTo_Proxy( 
    IStream  * This,
     IStream  *pstm,
     ULARGE_INTEGER cb,
     ULARGE_INTEGER  *pcbRead,
     ULARGE_INTEGER  *pcbWritten);


void __stdcall IStream_RemoteCopyTo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_Commit_Proxy( 
    IStream  * This,
     DWORD grfCommitFlags);


void __stdcall IStream_Commit_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_Revert_Proxy( 
    IStream  * This);


void __stdcall IStream_Revert_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_LockRegion_Proxy( 
    IStream  * This,
     ULARGE_INTEGER libOffset,
     ULARGE_INTEGER cb,
     DWORD dwLockType);


void __stdcall IStream_LockRegion_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_UnlockRegion_Proxy( 
    IStream  * This,
     ULARGE_INTEGER libOffset,
     ULARGE_INTEGER cb,
     DWORD dwLockType);


void __stdcall IStream_UnlockRegion_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_Stat_Proxy( 
    IStream  * This,
     STATSTG  *pstatstg,
     DWORD grfStatFlag);


void __stdcall IStream_Stat_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStream_Clone_Proxy( 
    IStream  * This,
     IStream  * *ppstm);


void __stdcall IStream_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 4347 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IEnumSTATSTG  *LPENUMSTATSTG;


extern "C" const IID IID_IEnumSTATSTG;


    
    struct __declspec(uuid("0000000d-0000-0000-C000-000000000046")) __declspec(novtable)
    IEnumSTATSTG : public IUnknown
    {
    public:
        virtual  HRESULT __stdcall Next( 
             ULONG celt,
             STATSTG  *rgelt,
             ULONG  *pceltFetched) = 0;
        
        virtual HRESULT __stdcall Skip( 
             ULONG celt) = 0;
        
        virtual HRESULT __stdcall Reset( void) = 0;
        
        virtual HRESULT __stdcall Clone( 
             IEnumSTATSTG  * *ppenum) = 0;
        
    };
    








































































#line 4459 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



 HRESULT __stdcall IEnumSTATSTG_RemoteNext_Proxy( 
    IEnumSTATSTG  * This,
     ULONG celt,
     STATSTG  *rgelt,
     ULONG  *pceltFetched);


void __stdcall IEnumSTATSTG_RemoteNext_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumSTATSTG_Skip_Proxy( 
    IEnumSTATSTG  * This,
     ULONG celt);


void __stdcall IEnumSTATSTG_Skip_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumSTATSTG_Reset_Proxy( 
    IEnumSTATSTG  * This);


void __stdcall IEnumSTATSTG_Reset_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IEnumSTATSTG_Clone_Proxy( 
    IEnumSTATSTG  * This,
     IEnumSTATSTG  * *ppenum);


void __stdcall IEnumSTATSTG_Clone_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 4513 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IStorage  *LPSTORAGE;

typedef struct  tagRemSNB
    {
    unsigned long ulCntStr;
    unsigned long ulCntChar;
     OLECHAR rgString[ 1 ];
    }	RemSNB;

typedef  RemSNB  *wireSNB;

typedef  OLECHAR  * *SNB;


extern "C" const IID IID_IStorage;


    
    struct __declspec(uuid("0000000b-0000-0000-C000-000000000046")) __declspec(novtable)
    IStorage : public IUnknown
    {
    public:
        virtual HRESULT __stdcall CreateStream( 
             const OLECHAR  *pwcsName,
             DWORD grfMode,
             DWORD reserved1,
             DWORD reserved2,
             IStream  * *ppstm) = 0;
        
        virtual  HRESULT __stdcall OpenStream( 
             const OLECHAR  *pwcsName,
             void  *reserved1,
             DWORD grfMode,
             DWORD reserved2,
             IStream  * *ppstm) = 0;
        
        virtual HRESULT __stdcall CreateStorage( 
             const OLECHAR  *pwcsName,
             DWORD grfMode,
             DWORD reserved1,
             DWORD reserved2,
             IStorage  * *ppstg) = 0;
        
        virtual HRESULT __stdcall OpenStorage( 
             const OLECHAR  *pwcsName,
             IStorage  *pstgPriority,
             DWORD grfMode,
             SNB snbExclude,
             DWORD reserved,
             IStorage  * *ppstg) = 0;
        
        virtual HRESULT __stdcall CopyTo( 
             DWORD ciidExclude,
             const IID  *rgiidExclude,
             SNB snbExclude,
             IStorage  *pstgDest) = 0;
        
        virtual HRESULT __stdcall MoveElementTo( 
             const OLECHAR  *pwcsName,
             IStorage  *pstgDest,
             const OLECHAR  *pwcsNewName,
             DWORD grfFlags) = 0;
        
        virtual HRESULT __stdcall Commit( 
             DWORD grfCommitFlags) = 0;
        
        virtual HRESULT __stdcall Revert( void) = 0;
        
        virtual  HRESULT __stdcall EnumElements( 
             DWORD reserved1,
             void  *reserved2,
             DWORD reserved3,
             IEnumSTATSTG  * *ppenum) = 0;
        
        virtual HRESULT __stdcall DestroyElement( 
             const OLECHAR  *pwcsName) = 0;
        
        virtual HRESULT __stdcall RenameElement( 
             const OLECHAR  *pwcsOldName,
             const OLECHAR  *pwcsNewName) = 0;
        
        virtual HRESULT __stdcall SetElementTimes( 
             const OLECHAR  *pwcsName,
             const FILETIME  *pctime,
             const FILETIME  *patime,
             const FILETIME  *pmtime) = 0;
        
        virtual HRESULT __stdcall SetClass( 
             const CLSID & clsid) = 0;
        
        virtual HRESULT __stdcall SetStateBits( 
             DWORD grfStateBits,
             DWORD grfMask) = 0;
        
        virtual HRESULT __stdcall Stat( 
             STATSTG  *pstatstg,
             DWORD grfStatFlag) = 0;
        
    };
    



















































































































































































#line 4806 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IStorage_CreateStream_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     DWORD grfMode,
     DWORD reserved1,
     DWORD reserved2,
     IStream  * *ppstm);


void __stdcall IStorage_CreateStream_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IStorage_RemoteOpenStream_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     unsigned long cbReserved1,
     byte  *reserved1,
     DWORD grfMode,
     DWORD reserved2,
     IStream  * *ppstm);


void __stdcall IStorage_RemoteOpenStream_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_CreateStorage_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     DWORD grfMode,
     DWORD reserved1,
     DWORD reserved2,
     IStorage  * *ppstg);


void __stdcall IStorage_CreateStorage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_OpenStorage_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     IStorage  *pstgPriority,
     DWORD grfMode,
     SNB snbExclude,
     DWORD reserved,
     IStorage  * *ppstg);


void __stdcall IStorage_OpenStorage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_CopyTo_Proxy( 
    IStorage  * This,
     DWORD ciidExclude,
     const IID  *rgiidExclude,
     SNB snbExclude,
     IStorage  *pstgDest);


void __stdcall IStorage_CopyTo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_MoveElementTo_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     IStorage  *pstgDest,
     const OLECHAR  *pwcsNewName,
     DWORD grfFlags);


void __stdcall IStorage_MoveElementTo_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_Commit_Proxy( 
    IStorage  * This,
     DWORD grfCommitFlags);


void __stdcall IStorage_Commit_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_Revert_Proxy( 
    IStorage  * This);


void __stdcall IStorage_Revert_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


 HRESULT __stdcall IStorage_RemoteEnumElements_Proxy( 
    IStorage  * This,
     DWORD reserved1,
     unsigned long cbReserved2,
     byte  *reserved2,
     DWORD reserved3,
     IEnumSTATSTG  * *ppenum);


void __stdcall IStorage_RemoteEnumElements_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_DestroyElement_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName);


void __stdcall IStorage_DestroyElement_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_RenameElement_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsOldName,
     const OLECHAR  *pwcsNewName);


void __stdcall IStorage_RenameElement_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_SetElementTimes_Proxy( 
    IStorage  * This,
     const OLECHAR  *pwcsName,
     const FILETIME  *pctime,
     const FILETIME  *patime,
     const FILETIME  *pmtime);


void __stdcall IStorage_SetElementTimes_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_SetClass_Proxy( 
    IStorage  * This,
     const CLSID & clsid);


void __stdcall IStorage_SetClass_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_SetStateBits_Proxy( 
    IStorage  * This,
     DWORD grfStateBits,
     DWORD grfMask);


void __stdcall IStorage_SetStateBits_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IStorage_Stat_Proxy( 
    IStorage  * This,
     STATSTG  *pstatstg,
     DWORD grfStatFlag);


void __stdcall IStorage_Stat_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 5024 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IPersistFile  *LPPERSISTFILE;


extern "C" const IID IID_IPersistFile;


    
    struct __declspec(uuid("0000010b-0000-0000-C000-000000000046")) __declspec(novtable)
    IPersistFile : public IPersist
    {
    public:
        virtual HRESULT __stdcall IsDirty( void) = 0;
        
        virtual HRESULT __stdcall Load( 
             LPCOLESTR pszFileName,
             DWORD dwMode) = 0;
        
        virtual HRESULT __stdcall Save( 
             LPCOLESTR pszFileName,
             BOOL fRemember) = 0;
        
        virtual HRESULT __stdcall SaveCompleted( 
             LPCOLESTR pszFileName) = 0;
        
        virtual HRESULT __stdcall GetCurFile( 
             LPOLESTR  *ppszFileName) = 0;
        
    };
    























































































#line 5154 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IPersistFile_IsDirty_Proxy( 
    IPersistFile  * This);


void __stdcall IPersistFile_IsDirty_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistFile_Load_Proxy( 
    IPersistFile  * This,
     LPCOLESTR pszFileName,
     DWORD dwMode);


void __stdcall IPersistFile_Load_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistFile_Save_Proxy( 
    IPersistFile  * This,
     LPCOLESTR pszFileName,
     BOOL fRemember);


void __stdcall IPersistFile_Save_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistFile_SaveCompleted_Proxy( 
    IPersistFile  * This,
     LPCOLESTR pszFileName);


void __stdcall IPersistFile_SaveCompleted_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistFile_GetCurFile_Proxy( 
    IPersistFile  * This,
     LPOLESTR  *ppszFileName);


void __stdcall IPersistFile_GetCurFile_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 5220 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  IPersistStorage  *LPPERSISTSTORAGE;


extern "C" const IID IID_IPersistStorage;


    
    struct __declspec(uuid("0000010a-0000-0000-C000-000000000046")) __declspec(novtable)
    IPersistStorage : public IPersist
    {
    public:
        virtual HRESULT __stdcall IsDirty( void) = 0;
        
        virtual HRESULT __stdcall InitNew( 
             IStorage  *pStg) = 0;
        
        virtual HRESULT __stdcall Load( 
             IStorage  *pStg) = 0;
        
        virtual HRESULT __stdcall Save( 
             IStorage  *pStgSave,
             BOOL fSameAsLoad) = 0;
        
        virtual HRESULT __stdcall SaveCompleted( 
             IStorage  *pStgNew) = 0;
        
        virtual HRESULT __stdcall HandsOffStorage( void) = 0;
        
    };
    




























































































#line 5356 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"



HRESULT __stdcall IPersistStorage_IsDirty_Proxy( 
    IPersistStorage  * This);


void __stdcall IPersistStorage_IsDirty_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStorage_InitNew_Proxy( 
    IPersistStorage  * This,
     IStorage  *pStg);


void __stdcall IPersistStorage_InitNew_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStorage_Load_Proxy( 
    IPersistStorage  * This,
     IStorage  *pStg);


void __stdcall IPersistStorage_Load_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStorage_Save_Proxy( 
    IPersistStorage  * This,
     IStorage  *pStgSave,
     BOOL fSameAsLoad);


void __stdcall IPersistStorage_Save_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStorage_SaveCompleted_Proxy( 
    IPersistStorage  * This,
     IStorage  *pStgNew);


void __stdcall IPersistStorage_SaveCompleted_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


HRESULT __stdcall IPersistStorage_HandsOffStorage_Proxy( 
    IPersistStorage  * This);


void __stdcall IPersistStorage_HandsOffStorage_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#line 5432 "C:\\Program Files\\Microsoft Visual Studio\\VC98\\include\\objidl.h"










 


typedef  ILockBytes  *LPLOCKBYTES;