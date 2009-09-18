public class main
{
    public static void main(String[] args)
    {
        Count a = new Count();
        Count b = new Count();
        
        System.out.println("Count (a): " + a.getCount());
        a.increment();
        System.out.println("Count (a): " + a.getCount());
        b.increment();
        System.out.println("Count (b): " + b.getCount());
    }
}