import java.net.*;
import java.io.*;

public class TCPServer implements Cloneable, Runnable
{
	volatile Thread runner = null;
	ServerSocket server = null;
	Socket data = null;
	
	public synchronized void startServer(int port) throws IOException
	{
		if (runner == null)
		{
			server = new ServerSocket(port);
			runner = new Thread(this);
			runner.start();
		}
	}
	
	public synchronized void stopServer() throws IOException
	{
		if (server != null)
		{
			runner = null;
			server.close();
		}
	}
	
	public void run()
	{
		if (server != null)
		{
			while (true)
			{
				try
				{
					Socket datasocket = server.accept();
					TCPServer newSocket = (TCPServer) this.clone();
					
					newSocket.server = null;
					newSocket.data = datasocket;
					newSocket.runner = new Thread(newSocket);
					(newSocket.runner).start();
				}
				
				catch (Exception e)
				{
				}
			}
		}
		
		else
		{
			run(data);
		}
	}
	
	public void run(Socket data)
	{
	}
}