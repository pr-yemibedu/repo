import javax.ejb.EJBObject;
import javax.ejb.RemoteException;

public interface Order extends EJBObject {
    public void addEntry(OrderEntry entry) throws RemoteException;
    public void removeEntry(OrderEntry entry) throws RemoteException;
    public float getTotal() throws RemoteException;
    public void purchase() throws RemoteException;
}
