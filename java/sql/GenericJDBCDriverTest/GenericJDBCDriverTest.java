import java.sql.*;

/**
 * usage
 */
public class GenericJDBCDriverTest {
    
    private static String usageString() {
        return "usage:\njava GenericJDBCDriverTest jdbcClassName server port DatabaseName " +
            "user password query";
    }
    
    public static void main(String[] argv) throws Exception {
        if (argv.length != 5) {
            System.out.println(usageString());
            return;
        }
        String jdbcClassName = argv[0];
        String connectionString = argv[1];
        String user = argv[2];
        String password = argv[3];
        String query = argv[4];
        Class.forName(jdbcClassName); 
        Connection con = DriverManager.getConnection(connectionString, user, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        ResultSetMetaData rsmd = rs.getMetaData();
        int numberOfColumns = rsmd.getColumnCount();
        for (int i = 1; i <= numberOfColumns; i++) {
            System.out.print(rsmd.getColumnLabel(i) + ",");
        }
        System.out.print("\n");
        while (rs.next()) {
            for (int i = 1; i <= numberOfColumns; i++) {
                System.out.print(rs.getString(i) + ",");
            }
            System.out.print("\n");
        }
        con.close();
    }
 
}