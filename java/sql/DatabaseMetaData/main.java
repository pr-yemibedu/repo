import java.sql.*;

public class main
{
	public static void main(String[] args) throws Exception
	{
		Connection con = null;
		DatabaseMetaData dbmd = null;
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;
		int columnCount = 0;
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con = DriverManager.getConnection("jdbc:odbc:insight", "", "");
		dbmd = con.getMetaData();
		// rs = dbmd.getCatalogs(); /* get listing of DB's/Catalogs on the server */
		rs = dbmd.getTables(null, "%", "%", null); /* get listing of tables in specified db on specified server */
		rsmd = rs.getMetaData();
		columnCount = rsmd.getColumnCount();
		
		
		for (int j = 1; j <= columnCount; j++)
		{
			System.out.print(rsmd.getColumnLabel(j) + ", ");
		}
		
		System.out.print("\n");
		
		while(rs.next())
		{
			for (int i = 1; i <= columnCount; i++)
			{
				System.out.print(rs.getString(i) + ", ");
			}
			
			System.out.print("\n");
		}
		
	}
}