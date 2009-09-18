                         CRACKERS, version 1.0

                 "The message cracker macro coding Wizard"


What are message cracker macros?
================================
Message cracker macros are a set of macros defined in windowsx.h. They are
different things to different people. My understanding is that the message
cracker macros were written to simplify the creation of a single, portable
set of message handling code that could be compiled to both the Win16 and
Win32 APIs. A high level of compatibility between Win16 and Win32 made them
unnecessary for all but a few messages (WM_COMMAND requires special care).

Another nice feature of message crackers is that they "crack open" values that
are packed into the wParam and lParam parameters for specific messages. The
use of message cracker macros has the nice side effect that window procedures
become cleaner looking and easier to read. But they were never fully documented
in the Windows SDK, so message cracker enthusiasts had to refer to their definition
in windowsx.h to make use of them.


What does CRACKERS do?
======================
I wrote CRACKERS to spin the code required to support message crackers.
CRACKERS displays a listbox of messages. When one is selected, you can copy
the required code to the Clipboard (either click the [Copy] button or
double-click the listbox entry. Three pieces of code get put on the
Clipboard: (1) cracker function declaration, (2) window procedure declaration,
and (3) cracker function definition. For example, for the WM_CHAR message, this
block of text gets put on the clipboard:

void OnChar(HWND, TCHAR, int);

HANDLE_MSG(hwnd, WM_CHAR, OnChar);

/*---------------------------------------------------------------------------*\
 |  OnChar: handle WM_CHAR message.                                          |
\*---------------------------------------------------------------------------*/
void OnChar(HWND hwnd, TCHAR ch, int cRepeat)
{
}


CRACKERS current features
=========================
1. Handles subset of Windows system messages.
2. Uses Windows clipboard to provide code.
3. Adds comment block to start of cracker function definition.
4. For some messages (WM_COMMAND and WM_PAINT), also adds commonly used
   code. (A switch statement for WM_COMMAND and BeginPaint/EndPaint for 
   WM_PAINT).
