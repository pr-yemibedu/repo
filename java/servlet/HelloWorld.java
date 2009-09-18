import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HelloWorld
    extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        response.setContentType("text/html");
        PrintWriter out = null;
        
        try
        {
            out = response.getWriter();
            out.println("Hello Wolrd");
            out.flush();
            out.close();
        }
        
        catch (IOException ioex)
        {
        }
    }
}