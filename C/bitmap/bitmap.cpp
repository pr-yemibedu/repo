#include <stdio.h>
#include <afxwin.h>

int main(int argc, char *argv[]) {
    HBITMAP hBMP = (HBITMAP)LoadImage(0, 
                                   "C:\\temp\\a.bmp",
                                   IMAGE_BITMAP,
                                   0,
                                   0,
                                   LR_LOADFROMFILE);
    CBitmap* bmp = CBitmap::FromHandle(hBMP);
}

