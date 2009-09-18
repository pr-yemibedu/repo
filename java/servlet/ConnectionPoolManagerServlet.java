import com.merck.fts.db.ConnectionPoolDataSourceManager;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;

/**
 * <code>ConnectionPoolManagerServlet</code> class is a servlet that manages
 * Connections.  It can load and create <code>PooledConnection</code>
 * objects from property file(s)
 *
 * @author Brian M. Pfeil
 * @version 1.0, 03/14/2001 
 */
public class ConnectionPoolManagerServlet
    extends HttpServlet
{
    /** constant for initialization parameter name */
    protected static final String RESOURCE_PATH_INIT_PARAM_NAME =
        "resource_path";
    
    /**
     * Constant for setting attribute within <code>ServletContext</code>.
     * Allows access to <code>ConnectionPoolDataSourceManager</code>
     * from within code>ServletContext</code>.
     */
    protected static final String
        CONNECTION_POOL_DATA_SOURCE_MANAGER_ATTRIBUTE_NAME =
            "connection_pool_data_source_manager";
    
    /** directory path where connection resource files can be loaded */
    protected static String resourcePath = null; 
    
    /**
     * Holds all the <code>ConnectionPoolDataSource</code> objects.
     */
    protected static ConnectionPoolDataSourceManager manager = null;
    
    /**
     * Initialize the servlet.  Loads all the ConnectionPoolDataSource
     * objects into the ConnectionPoolDataSourceManager object
     */
    public void init(ServletConfig config)
        throws ServletException
    {
        /** call our base class's <code>init(ServletConfig)</code> method */
        super.init(config);
        
        /** get our <code>ServletContext</code> object for this instance */
        ServletContext context = config.getServletContext();
        
        /** get the relative resource path from the initialization parameter */
        resourcePath = config.getInitParameter(RESOURCE_PATH_INIT_PARAM_NAME);
        
        /** get the real resource path from the relative path */
        resourcePath = context.getRealPath(resourcePath);
        
        initResources();
        
    }
    
    private void initResources()
    {
        /**
         * Loads the ConnectionPoolDataSource objects into the
         * ConnectionPoolDataSourceManager class via property files.
         */
        boolean result = load(resourcePath);
        
        /** get our <code>ServletContext</code> object for this instance */
        ServletContext context = getServletContext();
        
        /**
         * Remove the ConnectionPoolDataSourceManager from the
         * <code>ServletContext</code>
         */
        context.removeAttribute(
            CONNECTION_POOL_DATA_SOURCE_MANAGER_ATTRIBUTE_NAME);
            
        /** if successfully loaded */
        if (result == true)
        {
            context.setAttribute(
                CONNECTION_POOL_DATA_SOURCE_MANAGER_ATTRIBUTE_NAME,
                manager);
                
            System.out.println("Successfully loaded ConnectionPoolDataSourceManager");
        }
        
        /** failed to load */
        else
        {
            System.out.println("Failed to load ConnectionPoolDataSource " +
                "resources");
        }
    }
    
    
    /**
     * Any get request will cause the reloading of the
     * ConnectionPoolDataSourceManager object
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException
    {
        ServletContext context = getServletContext();
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("\t<body>");
        out.println(context.getRealPath("/WEB-INF"));
        out.println("\t</body>");
        out.println("</html>");
        
        initResources();
        
        /*
        Connection con = null;
        
        try
        {
            con = manager.getConnection("uswpftsportal.portaldata.links.full");
            con.close();
        }
        
        catch (Exception e)
        {
        }
        */
        
        
        out.flush();
        out.close();
    
    }
    
    /**
     *
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException
    {
        /**
         * Let the <code>doGet</code> event handle the request
         */
        doGet(request, response);
    }
    
    /**
     * Clean up the servlet
     */
    public void destroy()
    {
        
        /** get our <code>ServletContext</code> object for this instance */
        ServletContext context = getServletContext();
     
        /**
         * Remove the ConnectionPoolDataSourceManager from the
         * <code>ServletContext</code>
         */
        context.removeAttribute(
            CONNECTION_POOL_DATA_SOURCE_MANAGER_ATTRIBUTE_NAME);
            
        /**
         * Make sure current <code>ConnectionPoolDataSourceManager</code>
         * object is not in use (<code>null</code>)
         */
        if (manager != null)
        {
            manager.close();
            manager = null;
        }
    }

    /**
     * Load <code>PooledConnection</code> objects from
     * property files which reside in <code>pathname</code>
     */
    private boolean load(String pathname)
    {
        /** hold the return status of this method */
        boolean loaded = true;
        
        /** make sure we have a path to the resource file(s) */
        if (resourcePath == null)
        {
            System.out.println("The \"resourcePath\" variable is null");
            return false;
        }
        
        /**
         * Make sure current <code>ConnectionPoolDataSourceManager</code>
         * object is not in use (<code>null</code>)
         */
        if (manager != null)
        {
            manager.close();
            manager = null;
        }
        
        /** create new ConnectionPoolDataSourceManager object instance */
        manager = new ConnectionPoolDataSourceManager();
        
        try
        {
            /** load the PooledConnection property files */
            manager.dirLoad(resourcePath);
        }
        
        catch (Exception ioex)
        {
            System.out.println("Failed to load resource files from the \"" +
                resourcePath + "\" directory");
            ioex.printStackTrace();
        }
        
        finally
        {
            return loaded;
        }
    }
}