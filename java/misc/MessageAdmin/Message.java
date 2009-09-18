public class Message
{
    protected String title = null;
    protected String description = null;
    protected String text = null;
    protected String type = null;
    
    public Message()
    {
    }
    
    public void setTitle(String title)
    {
        this.title = title;
    }
    
    public void setDescription(String description)
    {
        this.description = description;
    }

    public void setType(String type)
    {
        this.type = type;
    }
    
    public void setText(String text)
    {
    }
    
    public String getTitle()
    {
        return this.title;
    }
    
    public String getDescription()
    {
        return this.description;
    }
    
    public String getType()
    {
        return this.type;
    }
    
    public String getText()
    {
        return this.text;
    }   
}