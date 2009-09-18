import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import com.merck.fts.sql.*;
import com.merck.is.arch.Authenticate.*;

/**
 * The <code>Authenticator</code> class provides an authentication
 * mechanism given a user name and password.  It implements 2 levels
 * of authentications.  It first looks up the user in a access control
 * list (a db table).  Then it authenticates the user name and password
 * against nt domain.
 *
 * @author Brian Pfeil, Merck & Co.,Inc. [brian_pfeil@merck.com]
 * @version 1.0, 04/06/2001
 */
public class Authenticator
{
    protected String dataSourceName = null;
    protected String userKey = null;
    protected String statement = null;
    
    protected Connection con = null;
    
    private Authenticator()
    {
    }
    
    public Authenticator getInstance()
    {
        return new Authenticator();
    }
    
    public void setDataSourceName(String dataSourceName)
    {
        this.dataSourceName = dataSourceName;
    }
    
    public void setUserKey(String userKey)
    {
        this.userKey = userKey;
    }
    
    public void setStatement(String statement)
    {
        this.statement = statement;
    }
    
    public static boolean authenticate(String user, String password)
    {
        boolean authenticated = false;
        
        if (isControlListMember(user))
        {
            try
            {
                Authenticate.NTAuthenticate(sDomain, sUser, sPassword);
                authenticated = true;
            }
            catch (PDCNotFoundException nfe)
            {
                System.out.println("Cannot authenticate the user. "
                    "Unable to find a domain controller. " + nfe.toString());
            }
            catch (SecurityException se){}
        }
        
        return authenticated;
    }

    private boolean isControlListMember(String user)
    {
        boolean isControlListMember = false;
        SQLCommandBean commander = new SQLCommandBean();
        commander.setConnection(getConnection());
        ResultSet rs = null;
        
        rs = commander.executeQuery(statement);
        
        if (rs != null)
        {
            try
            {
                while(rs.next())
                {
                    if ((rs.getString(userKey)).equalsIgnoreCase(user))
                    {
                        isControlListMember = true;
                        break;
                    }
                }
                
            }
            
            catch (SQLException sqlex)
            {
                sqlex.printStaceTrace();
            }
        }
        
        return isControlListMember;
    }
    
    private Connection getConnection()
    {
        Context ctx = null;
        DataSource ds = null;
        Connection con = null;
        try
        {
            ctx = new InitialContext();
            ds = (DataSource)ctx.lookup(dataSourceName);
            con = ds.getConnection();
        }
        
        catch (NamingException ne)
        {
            ne.printStackTrace();
        }
    
        finally
        {
            return con;
        }
    }
    
}