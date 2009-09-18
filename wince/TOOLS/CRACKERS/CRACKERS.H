#define MAX_SCRATCH (2048)

typedef struct tagMESSAGE
{
    LPSTR pName;
    LPSTR pFile;
    LPSTR pCode;
} MESSAGE, * LPMESSAGE;

typedef struct tagMESSAGEBLOCK
{
    LPSTR     pIniData;
    LPMESSAGE pMsgList;
    int       cMessages;
} MESSAGEBLOCK, * LPMESSAGEBLOCK;

typedef struct tagMESSAGESTRINGS
{
    LPSTR pMessage;
    LPSTR pRetType;
    LPSTR pFunctionName;
    LPSTR pParamList;
    LPSTR pMessageCode;
} MESSAGESTRINGS;

typedef struct tagCOMMENTBLOCK
{
    int   nCount;
    LPSTR pComment[1];
} COMMENTBLOCK, * LPCOMMENTBLOCK;
