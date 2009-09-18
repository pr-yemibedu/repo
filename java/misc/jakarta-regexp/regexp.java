import org.apache.regexp.*;

public class regexp
{
	public static void main(String [] argv) throws Exception
	{
		RE regexp = new RE(argv[0]);
		
		System.out.println("Regular Expression: " + argv[0]);
		System.out.println("String: " + argv[0]);
		
		if (regexp.match(argv[1]))
		{
			System.out.println("MATCH");
		}
		
		else
		{
			System.out.println("NO MATCH");
		}
		
	}
}
