import java.net.*;
import java.io.*;

public class main
{
    public static void main(String[] args)
        throws Exception
    {
        ServerSocket server = new ServerSocket(Integer.parseInt(args[0]));
        Socket s = null;
        while (true)
        {
            s = server.accept();
            process(s);
        }
        
    }
    
    public static void process(Socket s)
        throws Exception
    {
        BufferedReader reader =
            new BufferedReader(new InputStreamReader(s.getInputStream()));
    
        String line = null;
        int i = 0;    
        while (((line = reader.readLine()) != null))
        {
            System.out.print(line + "\n");
        }
    }
}
