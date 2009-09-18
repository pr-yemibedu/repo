using System;

class Person {
    private string first;
    private string last;
    
    public Person(string first, string last) {
        this.first = first;
        this.last = last;
    }
    
    public string First {
        get { return first; }
    }
    
    public string Last {
        get { return last; }
    }
}

class App {
    public static void Main(string[] args) {
        Person p = new Person("Brian", "Pfeil");
        Console.WriteLine("{0} {1}", p.First, p.Last);
    }
}