using System;
using System.Diagnostics;

class Debug
{
    [Conditional("TRACE")]
    public static void Trace(string s)
    {
        Console.WriteLine(s);
    }
}

class MyClass
{
    public static void Main()
    {
        Debug.Trace("hello");
    }
}

