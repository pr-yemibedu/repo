import org.exolab.castor.xml.*;
import java.io.*;
public class MarshallerExample
{
	public static void main(String [] argv) throws Exception
	{
		/* Marshalling */
		Student student = new Student("Brian Pfeil", 1, new Person("Tricia Pfeil"));
		Writer writer = new FileWriter("c:\\temp\\development\\xml\\marshalling\\Student.xml");
		Marshaller.marshal(student, writer);
		
		/* Unmarshalling */
		Reader reader = new FileReader("c:\\temp\\development\\xml\\marshalling\\Student.xml");
		student = (Student) Unmarshaller.unmarshal(Class.forName("Student"), reader);
		System.out.println("Name: " + student.getName() + "\nId:" + student.getId() + "\nPerson Name: " + (student.getPerson()).getName());
	}
}