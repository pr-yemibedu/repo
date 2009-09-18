import com.epicentric.common.*;
import com.epicentric.components.*; 
import com.epicentric.dom.*; 
import com.epicentric.event.*; 
import com.epicentric.jdbc.*; 
import com.epicentric.metastore.*;  
import com.epicentric.metatransaction.*;  
import com.epicentric.metatransaction.actions.*;  
import com.epicentric.metatransaction.util.*;  
import com.epicentric.page.*; 
import com.epicentric.permission.*;  
import com.epicentric.permission.serializable.*;  
import com.epicentric.portalbeans.*;  
// import com.epicentric.portalbeans.beans.jspbean.*;  
import com.epicentric.portalbeans.categories.*;  
import com.epicentric.portalbeans.viewutils.*;  
import com.epicentric.search.*;  
import com.epicentric.services.*;  
import com.epicentric.servlets.*;  
import com.epicentric.task.*;  
import com.epicentric.template.*;  
import com.epicentric.users.*;  
import com.epicentric.users.jndiusermanager.*;  
import com.epicentric.users.sqlusermanager.*;  

public class main
{
    public static void main(String[] args)
    {
        PortalServicesComponent portal_services = PortalServicesComponent.getInstance();
        
        if (!portal_services.isInitialized())
        {
            System.out.println("Portal Services Initialized ...");
            portal_services.init("properties.txt");
            portal_services.initAdminAccount();
		}
		
		ApplicationComponent app = portal_services.getApplicationComponent();
		// UserManagerComponent umc = new UserManagerComponent();
		// UserManager user_manager = umc.getDefaultUserManager();
        
        // UserGroupManager userGroupManager = UserGroupManager.getInstance();
        // System.out.println("" + userGroupManager.getNumGroups());
        
        /*
        UserManager user_manager = (UserManager) portal_services.getUserManager();
        
        if (user_manager != null)
        {
            System.out.println("user_manager initialized ...");
            UserSet us = user_manager.getAllUsers();
            displayAllUsers(us);
        }
        
        System.out.println(portal_services.getPortalHostName());
        */
        
        // setExpirationDate();
        
    }
    
    public static void displayAllUsers(UserSet us)
    {
        User u = null;
        
        do
        {
            u = us.getUser();
            System.out.println(u.getFullName());
        }
        while(us.next());
    }
    
    public static void setExpirationDate()
    {
        MetaStore metastore = MetaStore.getDefaultMetaStore();
        MetaStoreFolder metastorefolder = metastore.getSystemFolder();
        MetaStoreDocument metastoredocument = metastorefolder.getDocument("default_metauid", true);
    }
    
}
