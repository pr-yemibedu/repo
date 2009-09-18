#include <windows.h>
#include <windowsx.h>

/*---------------------------------------------------------------------------*\
 | CreateStandardFont: Create a GDI font for specified face name and point   |
 |                     size. A device DC can optionally be provided. A NULL  |
 |                     DC results in a font sized for the display screen.    |
 |                                                                           |
 | HFONT CreateStandardFont(                                                 |
 |            LPSTR lpszFaceName -- Face name of requested font.             |
 |            UINT nPointSize,   -- Point size of font.                      |
 |            HDC hdcIn)         -- Optional device DC (NULL for display)    |
 |                                                                           |
\*---------------------------------------------------------------------------*/
HFONT CreateStandardFont(LPSTR lpszFaceName, UINT nPointSize, HDC hdcIn)
{
    HDC     hdc;
    HFONT   hf;
    int     cyPixelInch;
    LOGFONT lf;

    // Check parameters.
    if ((lstrlen(lpszFaceName) > LF_FACESIZE) ||
        (nPointSize < 8) ||
        (nPointSize > 400))
    {
        return NULL;
    }

    // Init GDI data structure.
    ZeroMemory(&lf, sizeof(LOGFONT));

    // Set face name.
    lstrcpy(lf.lfFaceName, lpszFaceName);

    // Fetch font size raw data.
    hdc = (hdcIn == NULL) ? GetDC(NULL) : hdcIn;
    cyPixelInch = GetDeviceCaps(hdc, LOGPIXELSY);
    if (hdcIn == NULL) ReleaseDC(NULL, hdc);

    // Set font size.
    lf.lfHeight = (-1) * MulDiv(nPointSize, cyPixelInch, 72);

    // Ask GDI to create font.
    hf = CreateFontIndirect(&lf);

    return hf;
}

/*---------------------------------------------------------------------------*\
 | QueryLineHeight -- Calculate line height for font in a specific DC.       |
\*---------------------------------------------------------------------------*/
int QueryFontLineHeight(HDC hdc, HFONT hfont)
{
    HFONT hfontOld;
    int cyLineHeight;
    TEXTMETRIC tm;

    // If needed, connect font to DC.
    if (hfont)
    {
        hfontOld = SelectObject(hdc, hfont);
    }

    // Calculate line height.
    GetTextMetrics(hdc, &tm);
    cyLineHeight = tm.tmHeight + tm.tmExternalLeading;

    // If needed, restore DC.
    if (hfont)
    {
        SelectObject(hdc, hfontOld);
    }

    return cyLineHeight;
}
