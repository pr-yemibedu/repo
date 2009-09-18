import javax.ejb.EJBHome;
import javax.ejb.RemoteException;
import javax.ejb.CreateException;

public interface OrderHome extends EJBHome {
    public Order create(String id) throws RemoteException, CreateException;
}
