using System;

using MyComponents;

class App {
    public static void Main() {
        MyComponents.MyComponent comp =
            new MyComponents.MyComponent("age", "24");
        Console.WriteLine("Key={0},Value={1}", comp.Key, comp.Value);
    }
}