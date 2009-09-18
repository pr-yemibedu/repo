#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void usage()
{
    printf("usage:\nextract_bytes_from_file.exe [file path] [start position (1 based)] [# bytes to extract]\n");
}

int main(int argc, char *argv[]) {
    
    if (argc != 3)
    {
        usage();
        return 1;
    }
    
    char buf[255];
    char *path = argv[1];
    long startByte = atol(argv[2]);
    long length = atol(argv[3]);    
    long pos = 1;
    FILE *src = fopen(path, "r");
    FILE *dest = NULL;
    int c;
    strcpy(buf, path);
    strcat(buf, ".bin.new");
    dest = fopen(buf, "w");
    if (dest) {
        while ((c = fgetc(src)) != EOF) {
            if ((pos >= startByte) && (pos < (startByte + length))) {
                fputc(c, dest);
            }
            pos++;
        }
        fclose(dest);
    }
    fclose(src);
    printf("pos=%d\n", pos);
    return 0;
}
