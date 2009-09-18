import java.util.*;

public class MyThreadedClassDriver
{
	
	static public void main(String[] args) throws Exception
	{
		Vector v = new Vector();
		
		Thread t = null;
			
		for (int i = 0; i < Integer.parseInt(args[0]); i++)
		{
			v.add(new Thread(new MyThreadedClass(), "Thread " + i));
		}
		
		for (int j = 0; j < v.size(); j++)
		{
			t = (Thread) v.elementAt(j);
			System.out.println(t.getName() + " Starting ...");
			t.start();
			(Thread.currentThread()).sleep(1);
		}
		
		// System.exit(0);
	}
}