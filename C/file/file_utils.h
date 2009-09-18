#ifndef _FILE_UTILS_H_
#define _FILE_UTILS_H_

char *read_line(const char *path, char *line);
int file_exists(const char *path);
long file_size(const char *path);
int file_copy(const char *src, const char *dest, int overwrite);
int file_copy_mid(const char *src, long start, long end, const char *dest, int overwrite);
int file_to_char_array(const char *path, char *out);

#endif