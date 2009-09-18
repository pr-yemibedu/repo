public class Person : IPerson
{
    public Person(string name, int age)
    {
        this.name = name;
        this.age = age;
    }

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    string name;
    
    public int GetAge
    {
        return age;
    }

    public void SetAge(int value)
    {
        age = value;
    }

    int age;    
}
