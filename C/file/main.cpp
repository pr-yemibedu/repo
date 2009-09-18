#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>

#define CHAR_COUNT (255)
#define SEEK_POS ((long)0)
#define MAX_LINE 255

#include <stdio.h>
#include <string.h>
#include "file_utils.h"

int main(void) {
    
    FILE *stream; long index; char c; char path[255], line[MAX_LINE];  DWORD flags;
    
    if ((stream = tmpfile()) == NULL) { // create temp file
        printf("temp file could not be created\n");
    } else {
        printf("temp file created\n");
    }
    
    for (index = 0; index < CHAR_COUNT; index++) {
        fputc(index, stream);
    }
    
    fseek(stream, SEEK_POS, SEEK_SET);
    
    for (index = SEEK_POS; index < CHAR_COUNT; index++) {
        c = fgetc(stream);
        printf("%c", c);
    }
    printf("\n");
    if (fclose(stream) == 0) { // close temp file
        printf("successfully closed temp file\n");
    } else {
        printf("failed to close temp file\n");
    }
    tmpnam(path);
    printf("temp file name %s\n", path);
    /* read_line("main.c", line);
    while (line) {
        for (index = 0; index < 80; index++) {
            printf("%s\n", line);
            read_line("main.c", line);
        }
    } */
    strcpy(path, "c:\\b.xml");
    if (file_exists(path)) {
    	printf("%s exists\n", path);
    } else {
    	printf("%s does not exists\n", path);
    }
    file_copy(path, "c:\\c.xml", 0);
    
    flags = (/*FILE_ATTRIBUTE_ARCHIVE |*/ FILE_ATTRIBUTE_ENCRYPTED | FILE_ATTRIBUTE_HIDDEN);
    
    
    if (flags & FILE_ATTRIBUTE_ARCHIVE) {
    	printf("FILE_ATTRIBUTE_ARCHIVE exists\n");
    }
	printf("FILE_ATTRIBUTE_ARCHIVE=%d, FILE_ATTRIBUTE_ENCRYPTED=%d, FILE_ATTRIBUTE_HIDDEN=%d",
	        FILE_ATTRIBUTE_ARCHIVE, FILE_ATTRIBUTE_ENCRYPTED, FILE_ATTRIBUTE_HIDDEN);
}