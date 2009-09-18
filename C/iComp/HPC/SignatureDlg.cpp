// SignatureDlg.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "SignatureDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSignatureDlg dialog


CSignatureDlg::CSignatureDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSignatureDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSignatureDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CSignatureDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSignatureDlg)
	DDX_Control(pDX, IDC_RECEIPT_REQUESTED, m_ctlReceiptRequested);
	DDX_Control(pDX, IDC_SAMPLE_INSTRUCTIONS, m_ctlSampleInstructions);
	DDX_Control(pDX, IDC_SIGNATURE_FLIP, m_ctlFlip);
	DDX_Control(pDX, IDC_SAMPLES, m_ctlSamples);
	DDX_Control(pDX, IDC_LICENSE, m_ctlLicense);
	DDX_Control(pDX, IDC_LOCATION, m_ctlLocation);
	DDX_Control(pDX, IDC_LOGO, m_ctlLogo);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSignatureDlg, CDialog)
	//{{AFX_MSG_MAP(CSignatureDlg)
	ON_BN_CLICKED(IDC_SIGNATURE, OnSignature)
	ON_BN_CLICKED(IDC_SIGNATURE_CLEAR, OnSignatureClear)
	ON_BN_CLICKED(IDC_SIGNATURE_FLIP, OnSignatureFlip)
	ON_WM_LBUTTONDOWN()
	ON_WM_PAINT()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSignatureDlg message handlers

BOOL CSignatureDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();

	CRect rect;
	m_ctlLocation.SetCurSel(m_ctlLocation.AddString(TEXT("Dr. Michael Adler M.D.  2365 Holly Drive Gilbertsville, PA 19252")));
	m_ctlLogo.GetWindowRect(&rect);
	ScreenToClient(&rect);
	m_ctlSignature.Create(NULL, NULL, WS_CHILD | WS_VISIBLE | WS_BORDER, rect, this, IDC_SIGNATURE);
	m_ctlSignature.SetBitmaps(IDB_VIOXX, IDB_VIOXX_FLIP);
	m_bmFlip.LoadBitmap(IDB_FLIP);
	m_bmFlipFlip.LoadBitmap(IDB_FLIP_FLIP);
//	m_ctlFlip.SetBitmap(m_bmFlip);

	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSignatureDlg::OnSignature() 
{
}

void CSignatureDlg::OnSignatureClear() 
{
	m_ctlSignature.Reset();
	m_strSave = "";
}

int nState = 0;
HBITMAP hOldBitmapfinal;

void CSignatureDlg::OnPaint() 
{
	CDialog::OnPaint();
}

void CSignatureDlg::OnSignatureFlip() 
{
	CRect rect;
	GetClientRect(&rect);

	CRect rectSig;
	CRect rectFlip;
	m_ctlSignature.GetWindowRect(&rectSig);
	ScreenToClient(rectSig);
	static CPoint ptSig(0, 0);
	m_ctlFlip.GetWindowRect(&rectFlip);
	ScreenToClient(rectFlip);
	static CPoint ptFlip(0, 0);
	if (m_ctlSignature.m_bUpsideDown)
	{
		m_ctlSamples.ShowWindow(SW_SHOW);
		m_ctlLicense.ShowWindow(SW_SHOW);
		m_ctlLocation.ShowWindow(SW_SHOW);
		m_ctlSampleInstructions.ShowWindow(SW_SHOW);
		m_ctlReceiptRequested.ShowWindow(SW_SHOW);

		m_ctlSignature.m_bUpsideDown = FALSE;
		rectSig.OffsetRect(-ptSig.x, -ptSig.y);
		rectFlip.OffsetRect(-ptFlip.x, -ptFlip.y);
		ModifyStyle(0, WS_BORDER);
//		m_ctlFlip.SetBitmap(m_bmFlip);
	}
	else
	{

		ModifyStyle(WS_BORDER, 0);
		InvalidateRect(NULL);
		m_ctlSamples.ShowWindow(SW_HIDE);
		m_ctlLicense.ShowWindow(SW_HIDE);
		m_ctlLocation.ShowWindow(SW_HIDE);
		m_ctlSampleInstructions.ShowWindow(SW_HIDE);
		m_ctlReceiptRequested.ShowWindow(SW_HIDE);

		m_ctlSignature.m_bUpsideDown = TRUE;
		ptSig.x = rect.right - rectSig.right - rectSig.left;
		ptSig.y = rect.bottom - rectSig.bottom - rectSig.top;
		rectSig.OffsetRect(ptSig.x, ptSig.y);
		ptFlip.x = rect.right - rectFlip.right - rectFlip.left;
		ptFlip.y = rect.bottom - rectFlip.bottom - rectFlip.top;
		rectFlip.OffsetRect(ptFlip.x, ptFlip.y);
//		m_ctlFlip.SetBitmap(m_bmFlipFlip);
	}
	m_ctlSignature.MoveWindow(rectSig);
	m_ctlFlip.MoveWindow(rectFlip);

	
	Invalidate();
	return;


/*
	CDC* pDC = GetDC();
	CDC dc;
	dc.CreateCompatibleDC(pDC);
	CDC dc2;
	dc2.CreateCompatibleDC(pDC);

	bitmap1.DeleteObject();
	bitmap1.CreateCompatibleBitmap(&dc, rect.Width(), rect.Height());
	CBitmap* p = dc.SelectObject(&bitmap1);

	dc.BitBlt(0,0,rect.Width(),rect.Height(),pDC,rect.left,rect.top,SRCCOPY);


	BITMAP bm;
	bitmap1.GetBitmap(&bm);


	DWORD dwCount = (bm.bmWidthBytes * bm.bmHeight);
	BYTE* lpBits = new BYTE[dwCount];
	BYTE* lpBits2 = new BYTE[dwCount];

	DWORD dw = bitmap1.GetBitmapBits(dwCount, lpBits);
	bitmap2.CreateCompatibleBitmap(&dc2, rect.Width(), rect.Height());
	
	for (int i = 0; i < bm.bmHeight; i++)
	{
		lpBits2[bm.bmHeight - i - 1] = lpBits[i];	
	}

	DWORD dw2 = bitmap2.SetBitmapBits(dwCount, lpBits2);

	dc2.SelectObject(&bitmap2);

//	pDC->BitBlt(rect.left, rect.top, bm.bmWidth, bm.bmHeight, &dc2, 0, 0, SRCCOPY);
	pDC->BitBlt(rect.left, rect.top, bm.bmWidth, bm.bmHeight, &dc, 0, 0, SRCCOPY);

	Sleep(5000);
	dc.SelectObject(p);

*/



	while (rect.Width() % 4)
		rect.right++;	

    HDC hMemDCsrc;
	HDC hdc, hMemDCdest, hMemDCfinal;
	HBITMAP hOldBitmapdest;

	hdc = ::GetDC(NULL);

	HBITMAP dibsec_src, hOldBitmapsrc, dibsec_dest, dibsec_final;


    BITMAPINFO bi;
    void *lpBitsSrc, *lpBitsDest, *lpBitsFinal;
	
    memset(&bi,sizeof(BITMAPINFOHEADER), 0);
    bi.bmiHeader.biSize           = sizeof(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth          = rect.Width();  //must be DWORD aligned (divisible by 4).
    bi.bmiHeader.biHeight         = rect.Height();
    bi.bmiHeader.biPlanes         = 1;
    bi.bmiHeader.biBitCount       = 24;
    bi.bmiHeader.biCompression    = BI_RGB;

    dibsec_src = CreateDIBSection(hdc, (BITMAPINFO *)&bi, DIB_RGB_COLORS, 
                (LPVOID *)&lpBitsSrc, NULL, (DWORD)0);

    hMemDCsrc = CreateCompatibleDC(hdc);

    hOldBitmapsrc = (HBITMAP)::SelectObject(hMemDCsrc, dibsec_src);

    dibsec_dest = CreateDIBSection(hdc, (BITMAPINFO *)&bi, DIB_RGB_COLORS, 
                (LPVOID *)&lpBitsDest, NULL, (DWORD)0);
    hMemDCdest = CreateCompatibleDC(hdc);
    hOldBitmapdest = (HBITMAP)::SelectObject(hMemDCdest, dibsec_dest);

    dibsec_final = CreateDIBSection(hdc, (BITMAPINFO *)&bi, DIB_RGB_COLORS, 
                (LPVOID *)&lpBitsFinal, NULL, (DWORD)0);
    hMemDCfinal = CreateCompatibleDC(hdc);
    hOldBitmapfinal = (HBITMAP)::SelectObject(hMemDCfinal, dibsec_final);

	//Save the background to the destination DIBSection
	BitBlt(hMemDCdest,0,0,rect.Width(),rect.Height(),hdc,rect.left,rect.top,SRCCOPY);


	::DeleteObject((HBITMAP)::SelectObject(hMemDCsrc, hOldBitmapsrc));
	::DeleteDC(hMemDCsrc);

	int x,y; 
	RGBTRIPLE *dest, *final;

	for (y=0;y<rect.Height();y++)
	{
		dest = (RGBTRIPLE*)(LPVOID)lpBitsDest+rect.Width()*((rect.Height() - 1) - y);
		final = (RGBTRIPLE*)(LPVOID)lpBitsFinal+rect.Width()*y;
		final += rect.Width() - 1;
		for (x=0;x<rect.Width();x++)
		{
			final->rgbtRed = (BYTE)(int)dest->rgbtRed;
			final->rgbtGreen = (BYTE)(int)dest->rgbtGreen;
			final->rgbtBlue = (BYTE)(int)dest->rgbtBlue;
			dest++; final--;
		}
	}
    BitBlt(hdc,rect.left,rect.top,rect.Width(),rect.Height(),hMemDCfinal,0,0,SRCCOPY);
//	bitmap1.Attach(dibsec_final);

    ::DeleteObject((HBITMAP)::SelectObject(hMemDCdest, hOldBitmapdest));
//    ::DeleteObject((HBITMAP)::SelectObject(hMemDCfinal, hOldBitmapfinal));
    ::SelectObject(hMemDCfinal, hOldBitmapfinal);
	::DeleteDC(hMemDCdest);
	::DeleteDC(hMemDCfinal);
	::ReleaseDC(NULL,hdc);

}


void CSignatureDlg::OnLButtonDown(UINT nFlags, CPoint point) 
{
/*
	nState++;
	if (nState == 1)
	{
		m_ctlLogo.EnableWindow(FALSE);
		m_ctlLogo.ShowWindow(SW_HIDE);
		m_ctlSignature.m_nState = 0;
		m_ctlSignature.EnableWindow(TRUE);
		m_ctlSignature.ShowWindow(SW_SHOW);
//	m_strSave = m_ctlSignature.Save();
//	m_ctlSignature.Load(m_strSave);
		return;
	}

	m_ctlSignature.EnableWindow(FALSE);
	m_ctlSignature.ShowWindow(SW_HIDE);
	HBITMAP hBitmap = m_ctlSignature.GetBitmap();
	m_ctlSignature.m_nState = 1;
	m_ctlLogo.EnableWindow(TRUE);
	m_ctlLogo.ShowWindow(SW_SHOW);
	m_ctlLogo.SetBitmap(hBitmap);
*/
//	RedrawWindow(NULL, NULL, RDW_INVALIDATE | RDW_UPDATENOW | RDW_ERASE | RDW_FRAME);


	CDialog::OnLButtonDown(nFlags, point);
	m_ctlFlip.SetRedraw(TRUE);
	m_ctlFlip.EnableWindow(TRUE);
	nState = 0;
}

