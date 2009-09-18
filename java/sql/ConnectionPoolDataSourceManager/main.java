import java.sql.*;
import java.io.*;
import java.util.*;
import com.merck.fts.db.*;

public class main
{
    /**
     * java main "uswpftsportal.portaldata.links.full.ds" "uswpftsportal.portaldata.links.full" "select * from links"
     */
    public static void main(String[] args)
        throws Exception
    {
        ConnectionPoolDataSourceManager cpdsm =
            new ConnectionPoolDataSourceManager();
            
        cpdsm.load(args[0]);
        
        Statement stmnt = null;
        ResultSet rs = null;
        Connection con = null;
        
        for (int i = 0; i < 20; i++)
        {
            System.out.println(args[1]);
            con = cpdsm.getConnection(args[1]);
            stmnt = con.createStatement();
            rs = stmnt.executeQuery(args[2]);
            
            if (rs != null)
            {
                System.out.println("success");
            }
            
            else
            {
                System.out.println("failed");
            }
            
            //con.close();
        }
        
        while (true)
        {
            ;
        }

        // cpdsm.close();
    }
}