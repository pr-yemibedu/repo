using System;

class ParameterTest
{
    public static void fnValue(int i)
    {
        i = 100;
    }

    public static void fnOut(out int i)
    {
        i = 100;
    }

    public static void fnRef(ref int i)
    {
        i += 100;
    }

    public static int Sum(params int[] iArr)
    {
        int val = 0;
        foreach(int i in iArr)
        {
            val += i;
        }
        return val;
    }
}

class App
{
    public static void Main()
    {
        int i = 5;

        ParameterTest.fnValue(i);
        Console.WriteLine("After fnValue i = {0}", i);
    
        ParameterTest.fnOut(out i);
        Console.WriteLine("After fnOut i = {0}", i);

        ParameterTest.fnRef(ref i);
        Console.WriteLine("After fnRef i = {0}", i);        
        
        Console.WriteLine("Sum(1, 2, 3) = {0}", ParameterTest.Sum(1, 2, 3));        
    }
}

