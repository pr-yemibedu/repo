import java.io.*;
import com.merck.common.dbpool.*;

/**
 * Provides a single ConnectionPool that provides Connections
 * to an Oracle DB that contains FSNet content.
 */
public class FSNetConnectionPool
{
    /** single ConnectionPool */
    protected static ConnectionPool pool;
    
    /** absolute path to ConnectionPool property file */
    protected static String poolPropsPath = "dbpool.props";
    
    // get init pool when class is loaded
    static
    {
        init();
    }
    
    /**
     * Returns a ConnectionPool
     */
    public ConnectionPool getConnectionPool()
    {
        return pool;
    }
    
    /**
     * Initialize the ConnectionPool
     */
    public static boolean init()
    {
        try
        {
            // close all Connections opened from current pool if needed
            if (pool != null)
            {
                pool.closeAll();
            }
            
            pool = getConnectionPool(poolPropsPath);
            return true;
        }
        catch (IOException ioe)
        {
            return false;
        }
    }
    
    /**
     * Returns a ConnectionPool given a path to the ConnectionPool property
     * file.
     *
     * @param path absolute path to ConnectionPool property file
     */
    protected static ConnectionPool getConnectionPool(String path)
        throws IOException
    {
       return ConnectionPoolFactory.getConnectionPool(path);
    }
    
    public static void main(String[] argv)
    {
    }
}