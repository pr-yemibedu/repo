#include <fstream>
#include <cstdlib>

int main(int argc, char* argv[])
{
    ofstream& fout;
    fout = new ofstream("c:\\stream.txt");
    
    while (fout << 1);
    
    fout.close();
}