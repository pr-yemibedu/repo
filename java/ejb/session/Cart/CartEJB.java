import java.util.*;
import javax.ejb.*;

public class CartEJB
    implements SessionBean
{
    
    String customerName;
    String customerId;
    Vector contents;
    
    public void ejbCreate(String person)
        throws CreateException
    {
        if (person == null)
        {
            throw new CreateException("Null person not allowed.");
        }
        else
        {
            customerName = person;
        }
    
        customerId = "0";
        contents = new Vector();
    }
    
    public void ejbCreate(String person, String id) 
        throws CreateException
    {
        if (person == null)
        {
            throw new CreateException("Null person not allowed.");
        }
        else
        {
            customerName = person;
        }
    
        IdVerifier idChecker = new IdVerifier();

        if (idChecker.validate(id))
        {
            customerId = id;
        }
        else
        {
            throw new CreateException("Invalid id: " + id);
        }
    
        contents = new Vector();
    }
    
    public void addBook(String title)
    {
        contents.addElement(title);
    }
    
    public void removeBook(String title)
        throws BookException
    {
        boolean result = contents.removeElement(title);

        if (result == false)
        {
            throw new BookException(title + " not in cart.");
        }
    }
    
    public Vector getContents()
    {
        return contents;
    }
    
    public CartEJB()
    {
        log("CartEJB");
    }
    
    public void ejbRemove()
    {
        log("ejbRemove");
    }

    public void ejbActivate()
    {
        log("ejbActivate");
    }

    public void ejbPassivate()
    {
        log("ejbPassivate");
    }

    public void setSessionContext(SessionContext sc) {}

    protected void log(String message)
    {
        System.out.println(message);
    }
}  

