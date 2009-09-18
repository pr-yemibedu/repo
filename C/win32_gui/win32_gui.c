#include <windows.h>
#include <tchar.h>
#include "resource.h"

BOOL MainDialog_OnCommand(HWND hWnd,
						  WORD wCommand,
						  WORD wNotify,
						  HWND hControl) {
	switch (wCommand) {
		case IDSHOWMSG:
			MessageBox(hWnd, _T("Hello World!"), _T("Sample Message"), MB_OK);
		break;

		case IDCANCEL:
			EndDialog(hWnd, wCommand);
		break;
	}
	return TRUE;
}



BOOL MainDialogProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
	switch (uMsg) {
		case WM_COMMAND:
			return MainDialog_OnCommand(hWnd,
				                        LOWORD(wParam),
										HIWORD(wParam),
										(HWND)lParam);

		case WM_CLOSE:
			EndDialog(hWnd, 0);
			return(TRUE);
	}
	return(FALSE);
}

int WINAPI WinMain(
  HINSTANCE hInstance,      // handle to current instance
  HINSTANCE hPrevInstance,  // handle to previous instance
  LPSTR lpCmdLine,          // command line
  int nCmdShow              // show state
) {
	
	DialogBoxParam(GetModuleHandle(NULL),
		           MAKEINTRESOURCE(IDD_DIALOG_MAIN), 
		           NULL,
				   (DLGPROC)MainDialogProc,
				   0);
	return(0);
}
