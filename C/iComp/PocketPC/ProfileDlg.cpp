// ProfileDlg.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "ProfileDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define  COMBOID   100
#define  HTMLID    200

#define WM_ADDIMAGE     WM_USER + 100                // send the inline image to the HTML control
#define WM_PLAYSOUND    WM_USER + 200                // send the inline image to the HTML control


/////////////////////////////////////////////////////////////////////////////
// CProfileDlg dialog


CProfileDlg::CProfileDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProfileDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProfileDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CProfileDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProfileDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProfileDlg, CDialog)
	//{{AFX_MSG_MAP(CProfileDlg)
	//}}AFX_MSG_MAP
	ON_MESSAGE(WM_ADDIMAGE, OnAddImage)
	ON_MESSAGE(WM_PLAYSOUND, OnPlaySound)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProfileDlg message handlers

BOOL CProfileDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	CRect rect;
	GetClientRect(rect);
	m_ctlHtml.Create(DISPLAYCLASS, TEXT(""), WS_CHILD | WS_VISIBLE | WS_BORDER, rect, this, HTMLID);
	LoadBrowseFile(TEXT("\\iComp\\Profile.htm"));
	return TRUE;
	            
}

void CProfileDlg::LoadBrowseFile(LPTSTR pszBrowsFile)
{
    HANDLE hFile;
    BYTE    szBuffer[1025] = {0};
    DWORD   dwNumberOfBytesRead;

    hFile = CreateFile(	pszBrowsFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL );
    if ( hFile )
    {
        //Clear control of current file
        m_ctlHtml.SetWindowText(TEXT(""));              // erase the text that is currently in the control
        while ( ReadFile( hFile,szBuffer,1024,&dwNumberOfBytesRead,NULL) )
        {
            if ( dwNumberOfBytesRead )
			{
				szBuffer[dwNumberOfBytesRead] = 0;
                m_ctlHtml.SendMessage(DTM_ADDTEXT, FALSE, (LPARAM)szBuffer);
			}
            else
                break;
        }
        if ( GetLastError() != ERROR_SUCCESS)
        {
            ;///real error
        }
        m_ctlHtml.SendMessage(DTM_ENDOFSOURCE, 0, (LPARAM)NULL);
        CloseHandle(hFile);
    }
    else
    {
        TCHAR szError[256];

        wsprintf(szError, TEXT("Failed to load file %s, error %ld"), pszBrowsFile, GetLastError());
        MessageBox(szError, TEXT("Load File"), MB_OK|MB_SETFOREGROUND);    
    }
}

BOOL CProfileDlg::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult) 
{
	if (wParam == HTMLID)
	{
		NM_HTMLVIEW * pnmHTML = (NM_HTMLVIEW *) lParam;
		LPNMHDR pnmh = (LPNMHDR) &(pnmHTML->hdr);

		switch(pnmh->code)
		{
			// User tapped on a link or submitted a form
			case NM_HOTSPOT:
				break;

			// Notify the application to load the image
			case NM_INLINE_IMAGE:
			{
			   LPSTR         lpImageFile;

				lpImageFile = new CHAR[128];

				if ( lpImageFile )
				{
					strcpy(lpImageFile, (LPSTR)pnmHTML->szTarget);
//					TRACE(TEXT("%s\n"), lpImageFile);
					PostMessage(WM_ADDIMAGE, pnmHTML->dwCookie , (LPARAM) lpImageFile);
				}
				else
					m_ctlHtml.SendMessage(DTM_IMAGEFAIL, 0, (LPARAM) pnmHTML->dwCookie);

				break;
			}
			// notify the application to load the sound
			case NM_INLINE_SOUND:
			{
				LPSTR         lpImageFile;

				lpImageFile = new CHAR[128];;

				if ( lpImageFile )
				{
					strcpy(lpImageFile, (char*)pnmHTML->szTarget);
					TRACE(TEXT("%s\n"), lpImageFile);
					PostMessage(WM_PLAYSOUND, pnmHTML->dwCookie , (LPARAM) lpImageFile);

				}

				break;
			}
			// Contains the HTTP-EQUIV and CONTENT parameters of the META tag
			case NM_META:
				break;
			// Contains the title of the HTML document
			case NM_TITLE:
				break;

		}

	}
	
	return CDialog::OnNotify(wParam, lParam, pResult);
}


LRESULT CProfileDlg::OnAddImage(WPARAM wp, LPARAM lp)
{
    HBITMAP             hBitMap;
    LPTSTR              lpTarget;
    TCHAR               szError[100];
    BITMAP              BitMapInfo;
    INLINEIMAGEINFO     WebImage;
    LPSTR               lpImageFile = (LPSTR) lp;

    if (lp)
    {
        lpTarget = new TCHAR[128];

        if ( lpTarget )
        {
			{
			LPSTR	lpTemp = strchr(lpImageFile, ':'); // skip 'file' keyword
			if ( lpTemp ) lpImageFile = lpTemp + 1; // skip
			}
			memset(lpTarget, 0, 128);
			mbstowcs(lpTarget, (LPCSTR)lpImageFile, strlen(lpImageFile));

//            swprintf(lpTarget, TEXT("%s"), lpImageFile);
//                wsprintf(lpTarget, TEXT("%s%S"), pCurrentDirectory, lpImageFile);
            hBitMap = SHLoadDIBitmap(lpTarget);
            if ( hBitMap )
            {
                GetObject(hBitMap, sizeof(BITMAP), &BitMapInfo);
                WebImage.dwCookie = wp;  // pass back to DTM_SETIMAGE
                WebImage.bOwnBitmap = TRUE; // control to destroy object;
	            WebImage.iOrigHeight = BitMapInfo.bmHeight;
	            WebImage.iOrigWidth = BitMapInfo.bmWidth;
	            WebImage.hbm = hBitMap;

                m_ctlHtml.SendMessage(DTM_SETIMAGE, 0, (LPARAM) &WebImage);
            }
            else
            {
                wsprintf(szError, TEXT("Failed to load Image %s, error %ld"), lpTarget, GetLastError());
//                    MessageBox(hwnd, szError, TEXT("Load Image"), MB_OK|MB_SETFOREGROUND);
                m_ctlHtml.SendMessage(DTM_IMAGEFAIL, 0, (LPARAM) wp);
            }

            free(lpTarget);
        }
        else
            m_ctlHtml.SendMessage(DTM_IMAGEFAIL, 0, (LPARAM) wp);

//            free(lpImageFile);
    }

	return 0;
}     

LRESULT CProfileDlg::OnPlaySound(WPARAM wp, LPARAM lp)
{

	return 0;
}     

