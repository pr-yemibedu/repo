/**
 * Demonstrate the usage of the "extern" keyword
 */
extern "C++"
{
    int g(); // defined in "file2.cpp"
    int f() { return g(); }
    int x = 99;
};