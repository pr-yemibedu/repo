// this code snippet searches recursive in
// directories for ".html" files
import java.io.File;
import java.util.Vector;
import java.util.Enumeration;

public class FileSearch
{
    public static void main(String[] args)
    {
        Vector files = new Vector();
        
        search(new File(args[0]), args[1], files);
        
        //for (Enumeration e = files.elements(); e.hasMoreElements();)
        {
            // System.out.println((String)e.nextElement());
        }
    }
    
	public static void search(File f, String fileName, Vector result)
	{
		
		if (f.isDirectory())
		{
			String[] list = f.list();
			
			if (list != null)
			{
				for (int i = 0; i < list.length; i++)
				{
					search(new File(f, list[i]), fileName, result);
				}
			}
		}
		
		else
		{
			if (f.getName().equalsIgnoreCase(fileName))
			{
				result.addElement(f.getAbsolutePath());
				System.out.println(f.getAbsolutePath());
			}
		}
    }
}