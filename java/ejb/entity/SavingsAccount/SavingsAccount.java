import javax.ejb.EJBObject;
import java.rmi.RemoteException;

public interface SavingsAccount extends javax.ejb.EJBObject {
    public float getBalance() throws java.rmi.RemoteException;
    public void credit(float amount) throws java.rmi.RemoteException;
    public void debit(float amount) throws java.rmi.RemoteException;
}