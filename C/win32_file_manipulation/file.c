#include <stdio.h>
#include <windows.h>

typedef TCHAR**(*handler)(TCHAR*);
typedef int(*op)(int,int);

int add(int a,int b) { return(a + b); }

TCHAR **parse_line(TCHAR *line) {
	TCHAR seps[]  = " ,\t\n", *token = NULL, **tokens = NULL;
	int index = 0;
	token = (TCHAR*)malloc(800);
	token = strtok(line, seps);
	while(token) {
		*(tokens + index) = (TCHAR*)malloc(strlen(token) + 1);
		memset(*(tokens + index), 0, strlen(token) + 1);
		token = (TCHAR*)malloc(128);
		token = strtok(NULL, seps);
		index += 1;
	}
	return(tokens);
}

TCHAR *read_file(TCHAR *path) {
    HANDLE h; TCHAR *buf; DWORD file_size, bytes_read;
    h = CreateFile(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL, NULL);
    file_size = GetFileSize(h, NULL);
    buf = (TCHAR*)malloc(file_size + 1);
    memset(buf, 0, file_size + 1); 
    ReadFile(h, buf, file_size, &bytes_read, NULL);
    CloseHandle(h);
	return(buf);
}

int main(int argc, TCHAR *argv[]) {
	TCHAR* line = "1,2,3,4";
	TCHAR *buf = read_file(argv[1]);
	handler h = &parse_line;
	op o = &add;
    printf("%s", buf);
	printf("%d\n", (*o)(1,2));
	// (*h)(line);
	free(buf);
}