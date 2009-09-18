import javax.naming.InitialContext;
import javax.naming.Context;

public class ContextTest {
    
    private static Context ctx = null;
    
    public static void main(String[] args) throws Exception {
        String nameString = "jdbc/MyObj";
        ctx = new InitialContext();
        ctx.bind(nameString, new Integer(4));
        Integer obj = (Integer)ctx.lookup(nameString);
        System.out.println(obj);
    }
  
}