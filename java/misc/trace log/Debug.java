import java.io.*;
import java.util.*;

public class Debug
{
	public static void main(String [] argv) throws Exception
	{
		BufferedReader in = new BufferedReader(
		    new FileReader(argv[0]));
		
		String line = null;
		
		RecordSet rs = new RecordSet();
		while((line = in.readLine()) != null)
		{
			Record rec = new Record(LineParser.parse(line));
			rs.add(rec);
		}
		
		System.out.println(rs.toString());	
	}
}