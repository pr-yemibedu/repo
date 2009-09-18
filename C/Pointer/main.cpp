#include <iostream>
#include <fstream>

using namespace std;

bool display(char* path, ostream& out);

int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        cout << "Usage: cat <path>" << endl;
        return 0;
    }
    
    display(argv[1], cout);
}


bool display(char* path, ostream& out)
{
    ifstream* in = new ifstream(path);
    if (!in -> is_open()) { return false; }
    char ch;
    while(in -> get(ch)) { out.put(ch); }
    if (!in -> eof()) { return false; }
    in -> close();
    delete in;
    return true;
}