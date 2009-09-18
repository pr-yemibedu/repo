import java.io.*;
import java.util.*;
import com.merck.fts.util.*;

public class main
{
    public static Date startDate = null;
    public static Date endDate = null;
    public static void main(String[] args)
        throws Exception
    {
        startDate = StringFormat.toDate("03/15/2001", "MM/dd/yyyy");
        endDate = StringFormat.toDate("03/30/2001", "MM/dd/yyyy");
        
		BufferedReader in = new BufferedReader(
		    new FileReader(args[0]));
		
		Vector files = new Vector();
		String line = null;
		
		while((line = in.readLine()) != null)
		{
		    files.add(new File(line));
		}
		
		File f = null;
		String pathname = null;
		
		for (Enumeration e = files.elements(); e.hasMoreElements();)
		{
		    pathname = ((File)e.nextElement()).getAbsolutePath();
		    System.out.println("Processing: " + pathname);
		    
		    process(pathname, args[1]);
		}
    }
    
    public static void process(String pathname, String outputDir)
        throws Exception
    {
		BufferedReader in = new BufferedReader(
		    new FileReader(pathname));
		    
		BufferedWriter out = new BufferedWriter(
		    new FileWriter(outputDir + "\\" + getUserid(pathname) + ".log"));
		
		Vector v = null;
		
		String line = null;
		while((line = in.readLine()) != null)
		{
		    if (isValidLine(LineParser.parse(line)))
		    {
		        out.write(line);
		        out.newLine();
		    }
		}
		out.flush();
		in.close();
		out.close();
    }
    
    public static String getUserid(String pathname)
    {
        int beginIndex = 16;
        int endIndex = pathname.indexOf("\\", beginIndex);
        return pathname.substring(beginIndex, endIndex);
        // \\wprws04\fdata\FRANKSAN\Info\trace.log
    }
    
    public static boolean isValidLine(Vector v)
    {
        boolean result = false;
        
        try
        {
            String date = (String) v.elementAt(4);
            result = isBetween(StringFormat.toDate(date, "MM/dd/yyyy"), startDate, endDate);
        }
        
        catch (Exception e)
        {
            result = false;
        }
        
        finally
        {
            return result;    
        }
    }
    
    public static boolean isBetween(Date d, Date begin, Date end)
    {
        boolean result = false;
        
        try
        {
            result = (((d.compareTo(begin) > 0) || (d.compareTo(begin) == 0)) && ((d.compareTo(end) < 0) || (d.compareTo(end) == 0)));
        }
        
        catch (Exception e)
        {
            result = false;
        }
        
        finally
        {
            return result;
        }
        
    }
    
}