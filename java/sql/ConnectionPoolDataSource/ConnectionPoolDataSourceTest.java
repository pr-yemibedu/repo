import javax.naming.*;
import java.sql.*;
import javax.sql.*;
import com.ashna.jturbo.driver.*;
import java.util.*;
import com.sun.jndi.fscontext.*;

public class ConnectionPoolDataSourceTest
{
    public static void main(String[] args) throws
        Exception
    {
        javax.naming.Context ctx = new InitialContext();
        
        //create the hashtable and put the IntialContextFactory.
        Hashtable env = new Hashtable();
        env.put(javax.naming.Context.INITIAL_CONTEXT_FACTORY,
        "com.sun.jndi.fscontext.RefFSContextFactory");
        
        env.putAll(System.getProperties());
        
        //create an InitialContext and pass the hashtable created
        ctx = new InitialContext(env);
        
        Object obj = ctx.lookup("file:/c:/jdbc/pool/PortalData");
        //ConnectionPoolDataSource cpds = (ConnectionPoolDataSource) obj;
    }
}
