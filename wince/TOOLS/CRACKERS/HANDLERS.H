/* void Cls_OnSetIcon(HWND hwnd, BOOL fType, HICON hicon) */
#define HANDLE_WM_SETICON(hwnd, wParam, lParam, fn) \
    ((fn)((hwnd), (BOOL)(wParam), (HICON)lParam), 0L)
#define FORWARD_WM_SETICON(hwnd, fType, hicon, fn) \
    (void)(fn)((hwnd), WM_SETICON, (WPARAM)(BOOL)(fType),(LPARAM)(HICON)(hicon))
