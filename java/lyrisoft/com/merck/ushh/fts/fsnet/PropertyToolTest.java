package com.merck.ushh.fts.fsnet;

import java.util.Properties;
import java.io.InputStream;
import java.io.IOException;

public class PropertyToolTest
{
    protected static String m_path = "/com/merck/ushh/fts/fsnet/props.props";
    protected static String m_name = null;
    
    static 
    {
        Properties p = new Properties();
        try
        {
            InputStream in = (new DummyClass()).getClass().getResourceAsStream(m_path);
            p.load(in);
            m_name = p.getProperty("name");
        }
        catch(IOException ioe)
        {
            System.out.println("I/O problems reading the existing properties file.");
        }
        catch (Exception e)
        {
            e.printStackTrace();
            System.out.println("Properties file <" + m_path + "> not found.");
        }
        
    }
    
    /**
     * Dummy class only used to get at a resource, such as our properties file
     */
    protected static class DummyClass {}
        
    
    public static void main(String[] argv)
    {
        System.out.println(m_name);
    }
}