import java.io.*;

public class AddOneWriter
    extends FilterWriter
{
    public static void main(String[] args)
        throws IOException
    {
        AddOneWriter aow = new AddOneWriter(new OutputStreamWriter(System.out));
        
        for (int i = 0; i < 10; i++)
        {
            aow.write('1');
            aow.flush();
        }
        
    }
    
    public AddOneWriter(Writer out)
    {
        super(out);
    }

    public void write(int b)
        throws IOException
    {
        b = b + 1;
        out.write(b);
    }

    public void write(char[] c)
        throws IOException
    {
        out.write(addOne(c), 0, c.length);
    }

    public void write(char[] c, int off, int len)
        throws IOException
    {
        out.write(addOne(c), off, len);
    }
    
    private char[] addOne(char[] c)
    {
        
        for (int i = 0; i < c.length; i++)
        {
            c[i] = (char)(((int) c[i]) + 1);
        }
        return c;
    }
    
}