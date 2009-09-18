import javax.ejb.EJBObject;
import java.rmi.RemoteException;
import java.rmi.CreateException;

public interface SavingsAccountHome extends javax.ejb.EJBHome {
    public SavingsAccount create(String name, float balance) thorws RemoteException, CreateException;
    public SavingsAccount findByPrimaryKey(SavingsAccountPK primaryKey) throws RemoteException, FinderException;
}