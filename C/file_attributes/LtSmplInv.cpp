// LtSmplInv.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#define NUM_DIRS 5

struct FileInfo {
    TCHAR *directory;
    TCHAR *filename;
    TCHAR *creationTime;
    TCHAR *lastAccessTime;
    TCHAR *lastWriteTime;
    long fileSizeInBytes;
};
typedef struct FileInfo FILE_INFO;
typedef struct FileInfo* FILE_INFO_PTR;

int _tmain(int argc, _TCHAR* argv[]) {
    TCHAR* directories[] = {
        "C:\\Data\\SampleRecs\\Pda_In\\*.*",
        "C:\\Data\\SampleRecs\\Pda_Out\\*.*",
        "C:\\Data\\SampleRecs\\Sent\\*.*",
        "C:\\Data\\SampleRecs\\Srv_In\\*.*",
        "C:\\Data\\SampleRecs\\Srv_Out\\*.*"};
    int index, counter = 1;
    WIN32_FIND_DATA findData;
    FILE_INFO_PTR *fileInfoPtr = NULL;
    FILE_INFO_PTR *startFileInfoPtr = fileInfoPtr;
    HANDLE findHandle;
    for (index = 0; index < NUM_DIRS; index++) {
        memset((void*)&findData, 0, sizeof(WIN32_FIND_DATA));
        findHandle = FindFirstFile(directories[index], &findData);
        if (findHandle != INVALID_HANDLE_VALUE) {
            do {
                fileInfoPtr = (FILE_INFO_PTR*)realloc(fileInfoPtr, sizeof(FILE_INFO_PTR) * counter);
                fileInfoPtr = fileInfoPtr + counter;
                if (startFileInfoPtr == NULL) {
                    startFileInfoPtr = fileInfoPtr;
                }
                *(fileInfoPtr + counter) = (FILE_INFO_PTR)malloc(sizeof(FILE_INFO));
                memset((void*)*fileInfoPtr, 0, sizeof(FILE_INFO));
                (*fileInfoPtr)->directory = directories[index];
                (*fileInfoPtr)->filename = findData.cFileName;
                memset((void*)&findData, 0, sizeof(WIN32_FIND_DATA));
                counter++;
            } while(FindNextFile(findHandle, &findData));
        }
    }
    FindClose(findHandle);
    while (startFileInfoPtr) {
        printf("%s\%s\n", (*startFileInfoPtr)->directory, (*startFileInfoPtr)->filename);
        startFileInfoPtr++;
    }
    getchar();
	return 0;
}

