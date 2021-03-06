// TodayView.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "TodayView.h"
#include "cedb.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define  COMBOID   100
#define  HTMLID    200

#define WM_ADDIMAGE     WM_USER + 100                // send the inline image to the HTML control
#define WM_PLAYSOUND    WM_USER + 200                // send the inline image to the HTML control


HANDLE  hHeap = NULL;


LPTSTR      pCurrentDirectory = NULL;

CEOID	ceOIDDB=0;

/////////////////////////////////////////////////////////////////////////////
// CTodayView dialog

IMPLEMENT_DYNCREATE(CTodayView, CFormView)

CTodayView::CTodayView()
	: CFormView(CTodayView::IDD)
{
	//{{AFX_DATA_INIT(CTodayView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}

CTodayView::~CTodayView()
{
}

void CTodayView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CTodayView)
	DDX_Control(pDX, IDC_CALL_CUSTOMER, m_ctlCallCustomer);
	DDX_Control(pDX, IDC_TODAY_CALL_DATE, m_ctlCallDate);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CTodayView, CFormView)
	//{{AFX_MSG_MAP(CTodayView)
	ON_WM_SIZE()
	ON_NOTIFY(DTN_DATETIMECHANGE, IDC_TODAY_CALL_DATE, OnDatetimechangeCallDate)
	ON_BN_CLICKED(IDC_CALL_REPORT, OnCallReport)
	//}}AFX_MSG_MAP
	ON_MESSAGE(WM_ADDIMAGE, OnAddImage)
	ON_MESSAGE(WM_PLAYSOUND, OnPlaySound)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTodayView message handlers

/////////////////////////////////////////////////////////////////////////////
// CCustomerView diagnostics

#ifdef _DEBUG
void CTodayView::AssertValid() const
{
	CFormView::AssertValid();
}

void CTodayView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTodayView message handlers

void CTodayView::OnInitialUpdate() 
{
	if (m_ctlHtml.m_hWnd != NULL)
		return;

	CFormView::OnInitialUpdate();
	
	m_ctlHtml.Create(DISPLAYCLASS, TEXT(""), WS_CHILD | WS_VISIBLE | WS_BORDER, CRect(0,0,0,0), this, HTMLID);

	m_ctlCallDate.GetTime(m_timeCur);

	m_ctlCallCustomer.AddString(TEXT("ADAMS, JOHN M.D."));
	m_ctlCallCustomer.SetCurSel(m_ctlCallCustomer.AddString(TEXT("ADES, PHILIP M.D.")));
	m_ctlCallCustomer.AddString(TEXT("SMITH, ROBERT M.D."));


	CString strText;
	BuildPage(strText);
//	m_ctlHtml.SetHtml((LPCTSTR)strText);
	
}

void CTodayView::OnSize(UINT nType, int cx, int cy) 
{
	CFormView::OnSize(nType, cx, cy);
	
	if (cx > 0 && cy > 0)
	{
		m_ctlHtml.SetWindowPos(&wndTop, 0, 0, cx, cy, SWP_NOZORDER);
	}
}

void CTodayView::OnDatetimechangeCallDate(NMHDR* pNMHDR, LRESULT* pResult) 
{
	COleDateTime timeCur;
	m_ctlCallDate.GetTime(timeCur);
	if (timeCur != m_timeCur)
	{
		m_timeCur = timeCur;
		CString strText;
		BuildPage(strText);
//		m_ctlHtml.SetHtml((LPCTSTR)strText);
	}	
	*pResult = 0;
}

void CTodayView::BuildPage(CString& strText) 
{
	LoadBrowseFile(TEXT("\\iComp\\Today.htm"));
	return;

	strText = TEXT("<html><head><title>Calls</title></head><body><div align=\"left\">");
	strText += TEXT("<div align=\"left\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
    strText += TEXT("<tr>");
    strText += TEXT("<td><img src=\"/iComp/h1.bmp\" alt=\"wpe11.jpg (819 bytes)\" WIDTH=\"20\" HEIGHT=\"19\"></td>");
    strText += TEXT("<td><p align=\"left\">");
    strText += TEXT("<br><img src=\"/iComp/go2.bmp\" alt=\"go2\" WIDTH=\"17\" HEIGHT=\"17\"><a href=\"home.html\">Go to Today</a></font></td>");
    strText += TEXT("</tr>");
    strText += TEXT("<tr>");
    strText += TEXT("<td><img src=\"/iComp/star.bmp\" alt=\"star.gif (126 bytes)\" WIDTH=\"16\" HEIGHT=\"17\"></td>");
    strText += TEXT("<td><a href=\"#Planned Calls\"><strong>Planned Calls</strong></a><br>");
    strText += TEXT("<a href=\"home.html\">Dr. Adler, Mike</a><br>");
    strText += TEXT("<a href=\"home.html\">Dr. Greenameier, Al</a><br>");
    strText += TEXT("<a href=\"home.html\">Dr. Flootsnoot, Rex</a><br>");
    strText += TEXT("</font></td>");
    strText += TEXT("</tr>");
    strText += TEXT("<tr>");
    strText += TEXT("<td><img src=\"/iComp/h2.bmp\" alt=\"wpe12.jpg (811 bytes)\" WIDTH=\"20\" HEIGHT=\"19\"></td>");
    strText += TEXT("<td><strong><a href=\"\\windows\\program files\\sigtest.exe\">Report a Call</a><br>");
    strText += TEXT("</strong>Dr. Smith, Robert<br>");
    strText += TEXT("Dr. Jackson, Russell<br>");
    strText += TEXT("</font></td>");
    strText += TEXT("</tr>");
    strText += TEXT("<tr>");
    strText += TEXT("<td></td>");
    strText += TEXT("<td></td>");
    strText += TEXT("</tr>");
    strText += TEXT("</table>");
	strText += TEXT("</body></html>");
}

BOOL CTodayView::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult) 
{
	if (wParam == HTMLID)
	{
		NM_HTMLVIEW * pnmHTML = (NM_HTMLVIEW *) lParam;
		LPNMHDR pnmh = (LPNMHDR) &(pnmHTML->hdr);

		switch(pnmh->code)
		{
			// User tapped on a link or submitted a form
			case NM_HOTSPOT:
			{
				LPTSTR   lpFileName;
				LPTSTR  lpFileBuf;

				if ( pnmHTML->szTarget )
				{
					//jump
					lpFileName = (LPTSTR)pnmHTML->szTarget;
					TRACE(TEXT("%s\n"), lpFileName);
					{
					LPTSTR	lpTemp = wcschr(lpFileName, ':'); // skip 'file' keyword
					if ( lpTemp ) lpFileName = lpTemp + 1; // skip
					}

					lpFileBuf = new TCHAR[128];
					if ( lpFileBuf )
					{
						free(lpFileBuf);
					}
				}
				break;
			}
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
	
	return CFormView::OnNotify(wParam, lParam, pResult);
}

LRESULT CTodayView::OnAddImage(WPARAM wp, LPARAM lp)
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

LRESULT CTodayView::OnPlaySound(WPARAM wp, LPARAM lp)
{
    LPTSTR  lpTarget;
    DWORD   dwCount;

    LPSTR  lpImageFile = (LPSTR) lp;

    if ( lp )
    {
        lpTarget = (LPTSTR)HeapAlloc(hHeap, HEAP_NO_SERIALIZE|HEAP_ZERO_MEMORY, (strlen(lpImageFile) + lstrlen(pCurrentDirectory) + 1) * sizeof(TCHAR)+128);

        if ( lpTarget )
        {
			{
			LPSTR	lpTemp = strchr(lpImageFile, ':'); // skip 'file' keyword
			if ( lpTemp ) lpImageFile = lpTemp + 1; // skip
			}
            wsprintf(lpTarget, TEXT("%S"), lpImageFile);

            for ( dwCount = 0 ; dwCount < wp; dwCount++)
                sndPlaySound(lpTarget, SND_FILENAME|SND_ASYNC);

            HeapFree(hHeap, HEAP_NO_SERIALIZE, lpTarget);
        }

        HeapFree(hHeap, HEAP_NO_SERIALIZE, (LPVOID)lp);
    }

	return 0;
}     

void CTodayView::LoadBrowseFile(LPTSTR pszBrowsFile)
{
    HANDLE hFile;
    BYTE    szBuffer[1025] = {0};
    WCHAR   wcBuffer[1025];
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
//				mbstowcs(wcBuffer, (LPCSTR)szBuffer, dwNumberOfBytesRead);
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

void CTodayView::LoadBrowseFile(LPTSTR pszBrowsFile, CString& strText)
{
    HANDLE hFile;
    BYTE    szBuffer[1050] = {0};
    WCHAR   wcBuffer[2025];
    DWORD   dwNumberOfBytesRead = 0;
	strText = TEXT("");

    hFile = CreateFile(	pszBrowsFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL );
    if ( hFile )
    {
        while (ReadFile(hFile,szBuffer,1024,&dwNumberOfBytesRead,NULL))
        {
            if (dwNumberOfBytesRead)
			{
				mbstowcs(wcBuffer, (LPCSTR)szBuffer, dwNumberOfBytesRead);
				strText += wcBuffer;
				dwNumberOfBytesRead = 0;
			}
            else
                break;
        }
        if ( GetLastError() != ERROR_SUCCESS)
        {
            ;///real error
        }
        CloseHandle(hFile);
//	    hFile = CreateFile(TEXT("\\cust.htm"), GENERIC_WRITE ,FILE_SHARE_READ,NULL,CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL,NULL );
//		WriteFile(hFile, strText, strText.GetLength(), &dwNumberOfBytesRead, NULL);
//      CloseHandle(hFile);
    }
    else
    {
        TCHAR szError[256];
        wsprintf(szError, TEXT("Failed to load file %s, error %ld"), pszBrowsFile, GetLastError());
        MessageBox(szError, TEXT("Load File"), MB_OK|MB_SETFOREGROUND);    
    }
}

void CTodayView::OnCallReport() 
{
	AfxGetApp()->m_pMainWnd->PostMessage(WM_COMMAND, MAKELONG(ID_CALL, 0), NULL);
}
