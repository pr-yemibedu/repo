using System;

class MathClient
{
    public static void Main(String[] args)
    {
        MathService.MathService ms = new MathService.MathService();
        Console.WriteLine(ms.Add(1,2));
    }
}
