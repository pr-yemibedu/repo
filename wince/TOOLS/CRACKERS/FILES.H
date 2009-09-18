HANDLE CreateStandardFile(LPCTSTR pFileName, DWORD dwAccess, DWORD dwCreate);
LPTSTR CopyFileToGlobalMemory(LPCTSTR pFileName, DWORD * pdwSize);
LPTSTR CopyFileToHeap(LPCTSTR pFileName, DWORD * pdwSize);
LPTSTR CopyFileToBuffer(LPCTSTR pFileName, DWORD * pdwSize, LPTSTR pBuffer, DWORD dwSize);
BOOL DeleteDirectoryTree(LPSTR pPath, BOOL bIncludeSubdirectories);
BOOL CopyDirectoryTree(LPSTR pSrcPath, LPSTR pDestPath);
LPSTR SplitFileNameFromDirectoryName(LPSTR pchPath, LPSTR * ppchFileName);
