import java.io.*;
import java.util.*;
import java.sql.*;

public class PrideUserCheck
{
    public static void main(String[] args)
        throws Exception
    {
        Class.forName("com.ashna.jturbo.driver.Driver");
        
        Connection con =
            DriverManager.getConnection("jdbc:JTurbo://wprws07.merck.com/FTSPride",
                "work_order_pride_user", "password");
        BufferedReader in = new BufferedReader(new FileReader(args[0]));
        String line;
        while ((line = in.readLine()) != null)
        {
            line = line.trim().toUpperCase();
            if (!(userInPride(line, con)))
            {
                System.out.println(line);
            }
        }
    
        con.close();
    }
    
    private static boolean userInPride(String userid, Connection con)
        throws Exception
    {
        String statement =
            "SELECT USERID FROM PRIDE_USERS WHERE UPPER(LTRIM(RTRIM(USERID)))='" +
            userid + "'";
        Statement stmnt = con.createStatement();
        ResultSet rs = stmnt.executeQuery(statement);
        return rs.next();   
    }
}