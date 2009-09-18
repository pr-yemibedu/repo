using System;

public class PropertiesExample {
    public static void Main() {
        Point p = new Point(0,0);
        Console.WriteLine("p={0}", p);
        p.X = 1;
        p.Y = 1;
        Console.WriteLine("p={0}", p);
        p.X = 2;
        p.Y = 2;
        Console.WriteLine("p={0},{1}", p.X, p.Y);
   }
}

public class Point {
    private int x, y;
    
    public Point(int x, int y) {
        this.X = x;
        this.Y = y;
    }
        
    public int X {
        get { return(x); }
        set { x = value; }
    }

    public int Y {
        get { return(y); }
        set { y = value; }
    }
    
    public override string ToString() {
        return("{" + this.X + "," + this.Y + "}");
    }
}