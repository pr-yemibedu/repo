using System;

class Test
{
    public static void Main()
    {
        IPerson p = new Person();
        p.Name = "Brian Pfeil";
        p.Age = 25;
        Console.WriteLine(p);
    }
}
