import java.util.*;
import com.merck.fts.util.*;

public class main
{
    public static void main(String[] args)
    {
        Hashtable h = new Hashtable();
        h.put(args[1], args[2]);
        h.put("STart_Time", "01-20-2001");
        
        Substitute s = new Substitute(args[0], h);
        System.out.println(s.toString());
    }
}