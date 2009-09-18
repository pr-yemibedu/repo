#include <afx.h>
#include <afxwin.h>
#include <afxinet.h>

#include <iostream.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    CHttpConnection* pServer = NULL;
    CHttpFile* pFile = NULL;
    INTERNET_PORT nPort;
    CString strObject;
    CString strServerName;
    DWORD dwServiceType;
    CInternetSession session(_T("CInternetSession - MFC Sample App"),
                             1,
                             INTERNET_OPEN_TYPE_DIRECT);
                          
    AfxParseURL(_T("http://www.google.com"), dwServiceType, strServerName, strObject, nPort);
    
    pServer = session.GetHttpConnection(strServerName, nPort);
	pFile = pServer->OpenRequest(CHttpConnection::HTTP_VERB_GET,
			                     strObject, NULL, 1, NULL, NULL, INTERNET_FLAG_EXISTING_CONNECT | INTERNET_FLAG_NO_AUTO_REDIRECT);
	pFile->AddRequestHeaders(_T("Accept: text/*\r\nUser-Agent: MFC_Tear_Sample\r\n"));
	pFile->SendRequest();
	
	DWORD dwRet;
	pFile->QueryInfoStatusCode(dwRet);

	TCHAR sz[1024];
	while (pFile->ReadString(sz, 1023))
	{
		cout << sz;
	}                            
    return 0;
}