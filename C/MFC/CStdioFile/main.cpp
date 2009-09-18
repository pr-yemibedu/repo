#include <afx.h>
#include <iostream.h>

int main(int argc, char *argv[])
{
    try
    {
        CStdioFile f(argv[1], CFile::modeCreate | CFile::modeReadWrite);
        f.WriteString(argv[2]);
        f.Close();
    }
    catch (CFileException* fe)
    {
        TCHAR szMsg[1024];
        fe -> GetErrorMessage(szMsg, 1024);
        cerr << _T("error:") <<  szMsg << endl;
    }
    
    return 0;
}