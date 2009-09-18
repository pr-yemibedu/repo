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

    string name;
    int age;
}
