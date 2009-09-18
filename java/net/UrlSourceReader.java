import java.net.*;
import java.io.*;

public class UrlSourceReader
{
    public static void main(String[] args)
    {
        System.out.print(getURLSource(args[0]));
    }
    
    public static String getURLSource(String urlString)
    {
        StringBuffer sb = new StringBuffer();
        
        try
        {
            /** Open the URL for reading */
            URL u = new URL(urlString);
            InputStream in = u.openStream();
            
            /** buffer the input to increase performance */ 
            in = new BufferedInputStream(in);       
            
            /** chain the InputStream to a Reader */
            Reader r = new InputStreamReader(in);
            int c;
            while ((c = r.read()) != -1)
            {
              sb.append((char) c);
            } 
        }
        
        catch (MalformedURLException e)
        {
            System.err.println(urlString + " is not a parseable URL");
            e.printStackTrace();
        }
        
        catch (IOException e)
        {
            e.printStackTrace();
        }
        
        return sb.toString();
    }
}