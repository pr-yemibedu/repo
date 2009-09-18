interface IPerson
{
    string Name { get; set; }
    int Age { get; set; }
}

class Person : IPerson
{
    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public int Age
    {
        get { return age; }
        set { age = value; }
    }

    public override string ToString()
    {
        return "{Name=" + name + ",Age=" + age + "}";
    }

    string name;
    int age;
}
