import java.util.*;
import javax.naming.*;
import javax.naming.directory.*;

public class Lookup
{
	public static void main(String [] argv) throws Exception
	{
		Hashtable env = new Hashtable();
		env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.PROVIDER_URL, "ldap://localhost:389/o=Airius.com");
		
		DirContext ctx = new InitialDirContext(env);
		Attributes attrs = ctx.getAttributes("uid=tmorris,ou=People");
		
		String telephone = (String) attrs.get("telephonenumber").get();
		
		System.out.println("Telephone: " + telephone);
	}
}