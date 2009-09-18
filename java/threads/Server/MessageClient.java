import java.net.*;
import java.io.*;

public class MessageClient
{
	public static void main(String[] args) throws Exception
	{
		String host = args[0];
		int port = Integer.parseInt(args[1]);
		
		Socket client = new Socket(host, port);
		
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(client.getOutputStream()));
		
		String line = null;
		
		while (((line = in.readLine()) != null) && (!(line.equalsIgnoreCase("quit"))))
		{
			out.write(line);
			out.newLine();
			out.flush();
		}
		
		out.close();
		client.close();
		
		out = null;
		client = null;
	}
}