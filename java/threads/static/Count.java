public class Count
{
    private static int[] count = {0};
    
    public static void increment()
    {
        synchronized (count)
        {
            count[0]++;
        }
    }
    
    public static int getCount()
    {
        return count[0];
    } 
}
