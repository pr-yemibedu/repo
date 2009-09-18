import java.net.*;
import java.io.*;

public class XmlContentHandler extends ContentHandler
{
    public Object getContent(URLConnection urlc) throws IOException
    {
        byte [] buf = new byte[4096];
        InputStream in = urlc.getInputStream();
        int read;
        StringBuffer sb = new StringBuffer();
        while ((read = in.read(buf)) > 0)
        {
            sb.append(new String(buf, 0, read));
        }
        return sb.toString();
    }
    
    public static void main(String [] argv) throws Exception
    {
        URL url = new URL(argv[0]);
        HttpURLConnection httpUrlCon = (HttpURLConnection) url.openConnection();
        httpUrlCon.setContentHandlerFactory(XmlContentHandlerFactory.getInstance());
        String s = (String) httpUrlCon.getContent();
        System.out.println(s);
    }
}