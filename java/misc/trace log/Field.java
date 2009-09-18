public class Field
{
    protected int index;
	protected String name = null;
	protected String type = null;
	protected String value = null;
	
	public Field() { }
	
	public void setIndex(int index)
	{
	    this.index = index;
	}
	
	public int getIndex()
	{
	    return this.index;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getName()
	{
		return this.name;
	}
	
	public void setType(String type)
	{
		this.type = type;
	}
	
	public String getType()
	{
		return this.type;
	}
	
	public void setValue(String value)
	{
		this.value = value;
	}
	
	public String getValue()
	{
		return this.value;
	}
}