import java.sql.*;
import java.io.*;
import com.merck.common.dbpool.*;
import oracle.jdbc.driver.*;

/**
 * This class shows the usage of the Oracle 8.1.7 Thin JDBC driver.
 * It prints out the tables available in the "FSNET"
 * table space w/in the WIMD oracle instance.
 *
 * @author Brian Pfeil, Merck & Co.,Inc. [brian_pfeil@merck.com]
 * @version 1.0, 07/02/2001
 */
public class OraTest
{
    public static void main(String[] args)
        throws Exception
    {
        /** build connection pool object from ConnectionPool property file */
        ConnectionPool pool = ConnectionPoolFactory.getConnectionPool("dbpool.props");
        Connection con = pool.getConnection();
        // printTables(con);
        // procExample(con);
        // queryExample(con);
        // funcExample(con);
        // funcExample2(con);
        // displayAllProductPages(con);
        procExample2(con);
        pool.releaseConnection(con);
        
   
        /** load dirver class */
        //Class.forName("oracle.jdbc.driver.OracleDriver");
        
        /** create Connection object */
        // Connection con =
        //     DriverManager.getConnection(
                /** connection string */
                /** connection string format: "jdbc:oracle:thin:@<host>:<port>:<sid>" */
                // "jdbc:oracle:thin:@UXWSDV01:25099:WIMD",
                /** username */
                // "fsnetdev",
                /** password */
                // "hifsnet");
    }
    
    public static void printTables(Connection con) throws Exception
    {
        /** get the db metadata for the connection */
        DatabaseMetaData dbmd = con.getMetaData();
        
        /** get a result set that contains all the tables in the FSNET table space */
        ResultSet rs = dbmd.getTables(null, "FSNET", "%", null);
        printResultSet(rs);
    }
    
    public static void procExample(Connection con) throws Exception
    {
        String procedure = "{call getPointerURI(?,?,?)}";
        String moduleTextID = "";
        String isid = "pfeilbr";
        String url = "";
        CallableStatement callStmnt = con.prepareCall(procedure);
        callStmnt.setString(1, moduleTextID);
        callStmnt.setString(2, isid);
        callStmnt.registerOutParameter(3, java.sql.Types.VARCHAR);
        callStmnt.executeQuery();
        url = callStmnt.getString(3);
        System.out.println(url);
    }
    
    public static void procExample2(Connection con) throws Exception
    {
        CallableStatement cstmt =
            con.prepareCall ("{call pkg_fsnet.proc_get_rdt(?,?,?,?)}");
        cstmt.setString (1, "aaronc");
        cstmt.registerOutParameter (2, Types.VARCHAR);
        cstmt.registerOutParameter (3, Types.VARCHAR);
        cstmt.registerOutParameter (4, Types.VARCHAR);
        cstmt.execute ();
        String region = cstmt.getString(2);
        String district = cstmt.getString(3);
        String territory = cstmt.getString(4);
        System.out.println("Region: " + region + "\nDistrict: " + district +
            "\nTerritory: " + territory);
        cstmt.close();
    }
    
    public static void funcExample(Connection con) throws Exception
    {
        CallableStatement cstmt =
            con.prepareCall ("{ ? = call pkg_fsnet.fn_get_links(?,?)}");
        cstmt.registerOutParameter (1, OracleTypes.CURSOR);
        cstmt.setString (2, "FSNET_RESOURCE_LINK_0");
        cstmt.setString (3, "aaronc");
        cstmt.execute ();
        ResultSet rs = (ResultSet)cstmt.getObject(1);
        printResultSet(rs);
        rs.close();
        cstmt.close();
    }
    
    public static void displayAllProductPages(Connection con) throws Exception
    {
        CallableStatement cstmt =
            con.prepareCall ("{? = call pkg_fsnet.fn_get_module_links(?)}");
        cstmt.registerOutParameter (1, OracleTypes.CURSOR);
        cstmt.setString (2, "asdas");
        cstmt.execute ();
        ResultSet rs = (ResultSet)cstmt.getObject (1);
        while (rs.next())
        {
            Blob b = rs.getBlob("TMPLT_LINK_DATA");
            try
            {   
                InputStream in = b.getBinaryStream();
                if (in != null)
                {
                    BufferedReader br = new BufferedReader(
                        new InputStreamReader(in));
                    int c;
                    while((c = br.read()) != -1)
                    {
                        System.out.print((char) c);
                    }
                }
                in.close();
                System.out.println("\n\n\n********************************************************************\n\n\n");
            }
            catch (Exception e) {}
        }
        rs.close();
        cstmt.close();
    }
    
    public static void funcExample2(Connection con) throws Exception
    {
        CallableStatement cstmt =
            con.prepareCall ("{ ? = call pkg_fsnet.fn_get_include_url(?,?)}");
        cstmt.registerOutParameter (1, Types.VARCHAR);
        cstmt.setString (2, "FSNET_INCLUDE_0");
        cstmt.setString (3, "AARONC");
        cstmt.execute ();
        String s = cstmt.getString(1);
        System.out.println(s);
        cstmt.close();
    }
    
    public static void queryExample(Connection con) throws Exception
    {
        String statement = "SELECT LINK.LINK_ID, LINK.URL_TXT, LINK.DFLT_LINK_TXT, LINK.LINK_TYPE_CD, LINK.LINK_DESC_TXT, LINK.IMG_URL_TXT FROM LINK, MODULE, MODULE_LINK, SALES_TEAM_LINK, SALES_TEAM, SYS_USER WHERE (TRIM(SYS_USER.ISID) = 'AARONC') AND (MODULE.MODULE_TEXT_ID = 'LINK_1') AND (SYS_USER.SALES_TEAM_ID = SALES_TEAM.SALES_TEAM_ID) AND (SALES_TEAM.SALES_TEAM_ID = SALES_TEAM_LINK.SALES_TEAM_ID) AND (     (SALES_TEAM_LINK.LINK_ID = MODULE_LINK.LINK_ID) AND     (SALES_TEAM_LINK.MODULE_ID = MODULE_LINK.MODULE_ID) ) AND (MODULE_LINK.MODULE_ID = MODULE.MODULE_ID) UNION SELECT LINK.LINK_ID, LINK.URL_TXT, LINK.DFLT_LINK_TXT, LINK.LINK_TYPE_CD, LINK.LINK_DESC_TXT, LINK.IMG_URL_TXT FROM LINK, MODULE, MODULE_LINK, ORG_UNIT_LINK, ORG_UNIT, SYS_USER WHERE (TRIM(SYS_USER.ISID) = 'AARONC') AND (MODULE.MODULE_TEXT_ID = 'LINK_1') AND (SYS_USER.ORG_UNIT_NMBR = ORG_UNIT.ORG_UNIT_NMBR) AND (ORG_UNIT.ORG_UNIT_NMBR = ORG_UNIT_LINK.ORG_UNIT_NMBR) AND (     (ORG_UNIT_LINK.LINK_ID = MODULE_LINK.LINK_ID) AND     (ORG_UNIT_LINK.MODULE_ID = MODULE_LINK.MODULE_ID) ) AND (MODULE_LINK.MODULE_ID = MODULE.MODULE_ID) UNION SELECT LINK.LINK_ID, LINK.URL_TXT, LINK.DFLT_LINK_TXT, LINK.LINK_TYPE_CD, LINK.LINK_DESC_TXT, LINK.IMG_URL_TXT FROM LINK, MODULE, MODULE_LINK, SYS_USER, SYS_USER_LINK WHERE (TRIM(SYS_USER.ISID) = 'AARONC') AND (MODULE.MODULE_TEXT_ID = 'LINK_1') AND (SYS_USER.USER_ID = SYS_USER_LINK.USER_ID) AND (     (SYS_USER_LINK.LINK_ID = MODULE_LINK.LINK_ID) AND     (SYS_USER_LINK.MODULE_ID = MODULE_LINK.MODULE_ID) ) AND (MODULE_LINK.MODULE_ID = MODULE.MODULE_ID) AND (MODULE_LINK.LINK_ID = LINK.LINK_ID)";
        Statement stmnt = con.createStatement();
        ResultSet rs = stmnt.executeQuery(statement);
        printResultSet(rs);
    }
    
    public static void printResultSet(ResultSet rs) throws Exception
    {
        /** get the result set meta data */
        ResultSetMetaData rsmd = rs.getMetaData();
        
        /** number of colums in resultset */
        int columnCount = rsmd.getColumnCount();
        
        /** iterate through each column label and print it to standard output (console) */
        for (int j = 1; j <= columnCount; j++)
        {
            System.out.print(rsmd.getColumnLabel(j) + ", ");
        }
        System.out.print("\n");
        
        /** iterate through each record in the recordset */
        while (rs.next())
        {
            /** print out each field in the record */
            for (int i = 1; i <= columnCount; i++)
            {
                if (rsmd.getColumnType(i) != Types.BLOB)
                {
                    //System.out.print(rs.getString(i) + ", ");
                }
            }
            System.out.print("\n");
        }
    }
    
}