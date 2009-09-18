import java.net.*;
import java.io.*;

public class ServerHandler extends TCPServer
{
	public void run(Socket data)
	{
		try
		{
			BufferedReader in = new BufferedReader(new InputStreamReader(data.getInputStream()));
			OutputStream out = data.getOutputStream();
			
			String line = null;
			
			while (true)
			{
				while ((line = in.readLine()) != null)
				{
					System.out.println(line);
				}
			}
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}