#include "file_utils.h"
#include <stdio.h>
#include <stdlib.h>

int file_copy_fread_fwrite(const char *src, const char *dest, int overwrite);
int file_copy_fgetc_fputc(const char *src, const char *dest, int overwrite);

char *read_line(const char *path, char *line) {
    static fpos_t pos = 0;
    char c;
    FILE *f = fopen(path, "r");
    if (f) {
        if (pos != 0) {
            fsetpos(f, &pos);
            if (feof(f)) {
                *line = '\0';
                return NULL;
            }
        }
        while (((c = fgetc(f)) != '\n') && (c != EOF)) {
            *line++ = c;
        }
        *line = '\0';
    }
    fgetpos(f, &pos);
    fclose(f);
    return line;
}

int file_exists(const char *path) {
    FILE *f = fopen(path, "rb");
    if (f) {
        fclose(f);
        return 1;
    }
    return 0;
}

long file_size(const char *path) {
    FILE *f = fopen(path, "rb");
    long size = 0;
    if (f) {
        for (; fgetc(f) != EOF; size++);
        return size;
    }
    return -1;
}

int file_copy(const char *src, const char *dest, int overwrite) {
    return file_copy_fread_fwrite(src, dest, overwrite);
}


int file_copy_fread_fwrite(const char *src, const char *dest, int overwrite) {
	int ret = 0;
    FILE *fsrc = fopen(src, "rb");
    FILE *fdest = NULL;
    char c;
    int bytesRead;
    if (overwrite || (!overwrite && !file_exists(dest))) {
        fdest = fopen(dest, "wb");
        if (fdest) {
            while (!feof(fsrc)) {
                bytesRead = fread((void*)&c, sizeof(char), 1, fsrc);
                if (bytesRead > 0) {
                    fwrite((void*)&c, sizeof(char), 1, fdest);
                }
            }
            fflush(fdest);
            fclose(fdest);
            ret = 1;
        }
    }
    fclose(fsrc);
    return ret;
}

int file_copy_fgetc_fputc(const char *src, const char *dest, int overwrite) {
	int ret = 0;
    FILE *fsrc = fopen(src, "r");
    FILE *fdest = NULL;
    int c;
    if (overwrite || (!overwrite && !file_exists(dest))) {
        fdest = fopen(dest, "w");
        if (fdest) {
            while ((c = fgetc(fsrc)) != EOF) {
                fputc(c, fdest);
            }
            fclose(fdest);
            ret = 1;
        }
    }
    fclose(fsrc);
    return ret;
}

int file_to_char_array(const char *path, char *out) {
    FILE *f = fopen(path, "rb");
    long size = file_size(path);
    char c;
    out = (char*)malloc(sizeof(char) * size);
    long index = 0;
    if (f) {
        while ((c = fgetc(f)) != EOF) {
            out[index] = c;
            index++;
        }
        fclose(f);
        return 1; 
    }
    return 0;
}

int file_copy_mid(const char *src, long start, long end, const char *dest, int overwrite) {
	int ret = 0;
    FILE *fsrc = fopen(src, "rb");
    FILE *fdest = NULL;
    char c = 0;
    int bytesRead;
    int srcFilePos = 0;
    if (overwrite || (!overwrite && !file_exists(dest))) {
        fdest = fopen(dest, "wb");
        if (fdest) {
            while (!feof(fsrc)) {
                bytesRead = fread((void*)&c, sizeof(char), 1, fsrc);
                if (bytesRead > 0) {
                    if ((srcFilePos >= start) && (srcFilePos <= end)) {
                        fwrite((void*)&c, sizeof(char), 1, fdest);
                    }
                }
                srcFilePos++;
            }
            fflush(fdest);
            fclose(fdest);
            ret = 1;
        }
    }
    fclose(fsrc);
    return ret;
}