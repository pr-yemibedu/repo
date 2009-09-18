#include <iostream>
#include <string>

int main(int argc, char **argv) {
    std::string s = "hello world";
    string::size_type pos = s.find(' ');
    s[pos]='_';
    s+='!';
    cout << s.c_str();
    return 0;
}
