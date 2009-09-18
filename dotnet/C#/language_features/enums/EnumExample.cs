using System;

public class EnumExample {
    enum Colors {
        red,
        green=5,
        blue
    }
    
    public static void Main() {
        Console.WriteLine("{0},{1},{2}", (int)Colors.red, (int)Colors.green, (int)Colors.blue);
    }
}