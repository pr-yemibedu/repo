#include <stdio.h>
#include <iostream.h>
#include <tchar.h>
#include <rapi.h>

void CeGetSystemInfo()
{
    LPTSTR lpwszProcessorArch = NULL;
    SYSTEM_INFO sys_info;
    CeGetSystemInfo(&sys_info);
    
    switch (sys_info.wProcessorArchitecture)
    {
        case PROCESSOR_ARCHITECTURE_INTEL :
            lpwszProcessorArch = _T("PROCESSOR_ARCHITECTURE_INTEL");
        break;
        
        case PROCESSOR_ARCHITECTURE_MIPS :
            lpwszProcessorArch = _T("PROCESSOR_ARCHITECTURE_MIPS");
        break;
        
        case PROCESSOR_ARCHITECTURE_ALPHA :
            lpwszProcessorArch = _T("PROCESSOR_ARCHITECTURE_ALPHA");
        break;
        
        case PROCESSOR_ARCHITECTURE_PPC :
            lpwszProcessorArch = _T("PROCESSOR_ARCHITECTURE_PPC");
        break;
        
        case PROCESSOR_ARCHITECTURE_UNKNOWN :
        default:
            lpwszProcessorArch = _T("PROCESSOR_ARCHITECTURE_UNKNOWN");
        break;
    }
    
    DWORD dwPageSize = sys_info.dwPageSize;
    
    cout << "Processor Architecture: " << lpwszProcessorArch << endl;
    cout << "Page Size: " << dwPageSize << endl;
    
}

int main(int argc, char* argv[])
{
  HRESULT hRapiResult;
 
  _tprintf (TEXT("Connecting to Windows CE...\n"));

  hRapiResult = CeRapiInitEx ();

  if (FAILED(hRapiResult))
  {
    _tprintf (TEXT("Failed\n"));
    return -1;
  }
  
  CeGetSystemInfo();


  CeRapiUninit ();
  
  return 0;
}
