import java.io.*;
import java.sql.*;

public class RepInfo
{
    public static void main(String[] argv) throws Exception
    {
        Class.forName("com.ashna.jturbo.driver.Driver");
        Connection con =
            DriverManager.getConnection("jdbc:JTurbo://uswpa-afapsql02.merck.com/FTSPride",
                "afariaweb", "afariaweb");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT FIRST_NM, LAST_NM, ISID FROM PRIDE_USERS");
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnCount = rsmd.getColumnCount();
        StringBuffer out = new StringBuffer();
        for (int i = 1; i <= columnCount; i++)
        {
            out.append(rsmd.getColumnLabel(i));
            if (i != columnCount)
            {
                out.append(", ");
            }
        }
        out.append("\n");
        while (rs.next())
        {
            for (int i = 1; i <= columnCount; i++)
            {
                out.append(rs.getString(i));
                if (i != columnCount)
                {
                    out.append(", ");
                }
            }
            out.append("\n");
        }
        System.out.print(out.toString());
    }
}