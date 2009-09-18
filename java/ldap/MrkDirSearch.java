import netscape.ldap.*;
import java.io.*;
import java.util.*;

public class MrkDirSearch
{
    public static void main(String[] argv) throws Exception
    {
        // load directory search properites
        Properties props = new Properties();
        props.load(new FileInputStream(argv[0]));
        String host = props.getProperty("host");
        int port = Integer.parseInt(props.getProperty("port"));
        String[] searchString = toStringArray(props.getProperty("searchstrings"));
        String searchBase = props.getProperty("searchbase");
        int scope = Integer.parseInt(props.getProperty("scope"));
        String[] attributes = toStringArray(props.getProperty("attributes"));
        String displayMode = props.getProperty("displaymode");
        
        // search on each search string
        for (int i = 0; i < searchString.length; i++)
        {
            String[] searchStrings = null;
            
            /**
             * build array of search strings if special characters found in
             * orig search string
             */
            if ((searchString[i].indexOf('@') != -1) ||
                (searchString[i].indexOf('#') != -1))
            {
                searchStrings = buildSearchStrings(searchString[i]);
            }
            else
            {
                searchStrings = new String[] { searchString[i] };
            }
            
            /**
             * display each entry result set generated from each search string
             * in the searchStrings array
             */
            for (int j = 0; j < searchStrings.length; j++)
            {
                try
                {
                    // setup connection to directory server
                    LDAPConnection conn = null;
                    conn = new LDAPConnection();
                    conn.connect(host, port);
                    
                    // perform search
                    String result = search(conn, searchStrings[j], searchBase, scope, attributes, displayMode);
                    
                    // print results
                    if (!(result.trim().equals("")))
                    {
                        System.out.print(result);
                    }
                }
                catch (Exception e)
                {
                    System.out.println(e);
                }
            }
        }
    }
    
    protected static String search(LDAPConnection conn,
                                   String searchString,
                                   String searchBase,
                                   int scope,
                                   String[] attributes,
                                   String displayMode)
        throws Exception
    {
        StringBuffer out = new StringBuffer();
        LDAPEntry entry = null;
        
        try
        {
            LDAPSearchResults results =
                conn.search(searchBase, scope, searchString, attributes, false);
               
         
            while (results.hasMoreElements())
            {
                entry = null;
                
                try
                {
                    entry = results.next();
                }
                catch (LDAPReferralException e)
                {
                    System.out.println( "Search reference: " );
                    LDAPUrl refUrls[] = e.getURLs();
                    for (int i=0; i<refUrls.length; i++)
                    {
                        System.out.println( "\t" + /* refUrls[i].getURL() */ "here" );
                    }
                    continue;
                }
                catch (LDAPException e)
                {
                    System.out.println( "Error: " + e.toString() );
                    continue;
                }
            
                LDAPAttributeSet findAttrs=entry.getAttributeSet();
                Enumeration attrs = findAttrs.getAttributes();
            
                while (attrs.hasMoreElements())
                {
                    StringBuffer attrOut = new StringBuffer();
                    LDAPAttribute attr = (LDAPAttribute)attrs.nextElement();
                    String attrName = attr.getName();
               
                    Enumeration attrVals = attr.getStringValues();
                    
                    while (attrVals.hasMoreElements())
                    {
                        String val = (String)attrVals.nextElement();
                        attrOut.append(val);
                        if (attrVals.hasMoreElements())
                        {
                            attrOut.append(',');
                        } 
                    }
                    
                    if ("delim".equalsIgnoreCase(displayMode))
                    {
                        out.append('\"').append(attrOut.toString()).append('\"');

                    }
                    else
                    {
                        out.append(attrName).append(" = ").append(attrOut.toString());
                    }
                    if (attrs.hasMoreElements())
                    {
                        out.append(',');
                    }
               
                }
                out.append('\n');
            }
        }
        catch(LDAPException e)
        {
            System.out.println( "Error: " + e.toString() );
        }
      
        if ((conn != null) && conn.isConnected())
        {
            try
            {
                conn.disconnect();
            }
            catch (LDAPException e)
            {
                System.out.println( "Error: " + e.toString() );
            }
        }
        
        return out.toString();
    }
    
    
    protected static String[] toStringArray(String str)
    {
        Vector tokens = new Vector();
        StringTokenizer tokenizer = new StringTokenizer(str, ",");
        while (tokenizer.hasMoreTokens())
        {
            tokens.add(tokenizer.nextToken());
        }
        return (String[])tokens.toArray(new String[tokens.size()]);
    }
    
    protected static String[] buildSearchStrings(String searchString)
    {
        final int startIndex = 65;
        final int endIndex = 90;
        Vector searchStrings = new Vector();
        for (int x = startIndex; x <= endIndex; x++)
        {
            for (int y = startIndex; y <= endIndex; y++)
            {
                searchStrings.add(searchString.replace('@', (char)x).replace('#',(char)y));
            }
        }
        return (String[])searchStrings.toArray(new String[searchStrings.size()]);
    }
}