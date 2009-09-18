BOOL CopyMessageToEditControl(HWND hwnd, MESSAGE * pMsg, HWND hwndEdit);
BOOL LoadMessageData(HWND hwnd, MESSAGE * pMsg, MESSAGESTRINGS * ms);
BOOL ExpandMessageData(HWND, MESSAGESTRINGS *, LPSTR, DWORD, MESSAGE *);
LPMESSAGEBLOCK BuildMessageBlock(HWND hwnd);
void DestroyMessageBlock(LPMESSAGEBLOCK pMB);
void FlushMessageCache(void);

BOOL LoadCommentBlock(void);
void SaveCommentBlock(LPCOMMENTBLOCK pcb);
LPCOMMENTBLOCK CommentBlockAlloc(LPSTR lpIn);
BOOL CommentBlockFree(LPCOMMENTBLOCK pcb);

BOOL RevertTemporaryMessageData();
BOOL CommitTemporaryMessageData();
BOOL BuildTemporaryMessageData(HWND hwnd, LPMESSAGEBLOCK * pmbReturn);
LPMESSAGE AllocateTempMessageData(LPSTR pMessageName, LPSTR pFileName);
BOOL FreeTempMessageData(LPMESSAGE pMsg);
