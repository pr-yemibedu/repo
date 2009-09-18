public class Student extends Person implements java.io.Serializable
{
	private int id;
	private Person person = null;
	
	public Student()
	{
		super();
	}
	
	public Student(String name)
	{
		super(name);
	}
	
	public Student(String name, int id)
	{
		super(name);
		this.setId(id);
	}
	
	public Student(String name, int id, Person person)
	{
		super(name);
		this.setId(id);
		this.setPerson(person);
	}
	
	public int getId()
	{
		return this.id;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public Person getPerson()
	{
		return this.person;
	}
	
	public void setPerson(Person person)
	{
		this.person = person;
	}
	
}
