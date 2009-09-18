/**
* An simple person class
*/

public class Person implements java.io.Serializable
{
	/**
	* The name of the person
	*/
	
	private String name = null;
	
	
	/**
	* Creates a Person with no name
	*/
	
	public Person()
	{
		super();
	}
	
	
	/**
	* Creates a Person with the given name
	*/
	
	public Person(String name)
	{
		this.name  = name;
	}
	
	
	/**
	* @return name of the person
	*/
	
	public String getName()
	{
		return name;
	}
	
	
	/**
	* Sets the name of the person
	* @param name the name of the person
	*/
	
	public void setName(String name)
	{
		this.name = name;
	}
}

