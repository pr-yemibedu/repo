/**
 * This program demonstrates the usage of the fwrite and fread functions
 */
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <memory.h>

struct Rect
{
    int width;
    int height;
};

/**
 * write out a Rect to the specified file
 */
bool write_rect(Rect* r, const char* path)
{
    FILE* out_file;
    out_file = fopen(path, "w");
    if (out_file == NULL)
    {
        fprintf(stderr, "Cannot open output file: %s\n", path);
        return false;
    }
    unsigned int items_written = fwrite((void*)r, sizeof(*r), 1, out_file);
    fclose(out_file);
    return (items_written == 1);
}

/**
 * read a Rect from the specified file
 */
bool read_rect(Rect* r, const char* path)
{
    FILE* in_file = NULL;
    in_file = fopen(path, "r");
    if (in_file == NULL)
    {
        fprintf(stderr, "Cannot open input file: %s\n", path);
        return false;
    }
    unsigned int items_read = fread((void*)r, sizeof(*r), 1, in_file);
    fprintf(stdout, "items_read=%d\n", items_read);
    fclose(in_file);
    if (items_read == 1)
    {
        return true;
    }
    else
    {
        return false;
    }
}

/**
 * Create Rect, write it to file, then read in Rect from file
 */
int main(int argc, char* argv[])
{

    const char* path = "rectangle.dat";
    Rect rect_out;
    Rect rect_in;
    
    rect_out.width = 500;
    rect_out.height = 1000;
    
    bool rect_written = write_rect(&rect_out, path);
    if (rect_written == true)
    {
        bool rect_read = read_rect(&rect_in, path);
        if (rect_read)
        {
            fprintf(stdout, "Read rectangle from file: %s\n", path);
            fprintf(stdout, "Rectangle width=%d and height=%d\n", rect_in.width, rect_in.height);
        }
    }
   
    return 0;
}