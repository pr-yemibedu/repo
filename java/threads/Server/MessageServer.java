import java.net.*;
import java.io.*;

public class MessageServer
{
	public static void main(String[] args) throws Exception
	{
		int port = Integer.parseInt(args[0]);
		TCPServer serv = new ServerHandler();
		
		serv.startServer(port);
	}
}