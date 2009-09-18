using System;
//using Project1;

class Test
{
    public static void Main()
    {
        NETPerson.Person p = new NETPerson.Person();
        p.Name = "Brian Pfeil";
        p.Age = 25;
        Console.WriteLine("Name: " + p.Name + "\nAge: " + p.Age);
        return;
    }
}
