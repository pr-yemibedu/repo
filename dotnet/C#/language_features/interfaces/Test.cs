using System;

class Test
{
    public static void Main()
    {
        IPerson p = (IPerson) new Person("Brian Pfeil", 25);
        Console.WriteLine(p.Name + " " + p.Age);
        return;
    }
}       
