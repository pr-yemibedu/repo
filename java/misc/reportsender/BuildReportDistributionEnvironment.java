import java.sql.*;

import com.merck.fdds.util.*;
import com.merck.fdds.db.*;
import com.merck.fdds.io.*;

public class BuildReportDistributionEnvironment
{
	public static final String REPORT_PROPERTIES_TEMPLATE_URI = "http://CN336241-A.merck.com:8080/PropertiesTemplate.ini";
	
	public static void main(String [] argv) throws Exception
	{
		String rptEnvRootDir = argv[0];
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		con = getConnection();
		stmt = con.createStatement();
		rs = stmt.executeQuery("select name, src_rel_rpt_dir_root from report_distribution_properties");
		
		String name = null;
		String src_rel_rpt_dir_root = null;
		
		if (rs != null)
		{
			while(rs.next())
			{
				name = rs.getString("name");
				src_rel_rpt_dir_root = rs.getString("src_rel_rpt_dir_root");
				createReportEnvironment(rptEnvRootDir, name, src_rel_rpt_dir_root);
			}
		}
	}
	
	public static boolean createReportEnvironment(String rptEnvRootDir, String rptName, String relRptDir) throws Exception
	{
		String rptRootDir = null;
		
		if (!(rptEnvRootDir.endsWith("\\")))
		{
			rptEnvRootDir += "\\";
		}
		
		rptRootDir = rptEnvRootDir + relRptDir;
		
		createReportEnvironmentDirectories(rptRootDir);
		createReportPropertiesFile(rptName, rptRootDir);
		
		return true;
	}
	
	public static boolean createReportEnvironmentDirectories(String rptRootDir) throws Exception
	{
		boolean result = true;
		
		try
		{
			/* create root report directory */
			FileIO.createDirectory(rptRootDir);
			
			/* create reports "data" directory */
			FileIO.createDirectory(rptRootDir + "\\" + "data");
			
			/* create reports "cover" directory */
			FileIO.createDirectory(rptRootDir + "\\" + "cover");
			
			/* create reports "notify" directory */
			FileIO.createDirectory(rptRootDir + "\\" + "notify");
		}
		
		catch(Exception e)
		{
			result = false;
		}
		
		finally
		{
			return result;
		}	
	}
	
	public static void createReportPropertiesFile(String rptName, String rptRootDir) throws Exception
	{
		TemplatePopulator tp = new TemplatePopulator();
		
		tp.setTemplate(REPORT_PROPERTIES_TEMPLATE_URI);
		tp.setSql("select * from report_distribution_properties where name='" + rptName + "'");
		tp.setConnection(getConnection());
		
		String rptProperties = tp.process();
		FileIO.asciiAppend(rptRootDir + "\\properties.ini", rptProperties);
	}
	
	public static Connection getConnection() throws Exception
	{
		Connection con = null;
		DBAccess access = DBAccessStore.get("remote");
		Class.forName(access.getDriver());
		con = DriverManager.getConnection(access.getUrl(), access.getUser(), access.getPassword());
		return con;
	}
}