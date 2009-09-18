import java.util.*;
import java.io.StreamTokenizer;
import java.io.StringReader;
import java.io.Reader;
import java.io.IOException;

/**
 * LineParser class provides methods for parsing
 */
public class LineParser
{
	/**
	 *
	 */
	public static Vector parse(String line)
	    throws IOException
	{
		Vector c = new Vector();
		
		StreamTokenizer st = new StreamTokenizer(new StringReader(line));
		
		/**
		 * Iterate through each token in the String
		 */
		while(st.nextToken() != st.TT_EOF)
		{
		    /**
		     * Token is number
		     */
			if (st.ttype == (StreamTokenizer.TT_NUMBER))
			{
				c.add(new Double(st.nval));
			}
			
			/**
			 * Token is a String
			 */
			else if (st.ttype == (StreamTokenizer.TT_WORD))
			{
				c.add(st.sval);
			}
			
			/**
			 * Should never reach this case
			 */
			else if (st.sval != null)
			{
				c.add(st.sval);
			}
		}
		
		return c;
	}
}