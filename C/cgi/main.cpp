#include <iostream>
#include <cstdio>
#include <cstdlib>

int main(int argc, char* argv[])
{
    
    long contentLength;
    char *endPtr;
    char in;
    const char *length = getenv("CONTENT_LENGTH");
    contentLength = strtol(length, &endPtr, 10);
    char buf[contentLength];
    long i;
    for (i = 0; i < contentLength; i++)
    {
        cin >> in;
        buf[i] = in;
    }
    buf[i] = '\0';
    cout << "Content-type: text/html\n\n";
    cout << "Get Method Data<br>" << (char*) getenv("QUERY_STRING") << "<br>";
    cout << "Cookie Data<br>" << (char*) getenv("HTTP_COOKIE") << "<br>";
    cout << "Post Method Data<br>" << buf;
    
    return 0;
}
