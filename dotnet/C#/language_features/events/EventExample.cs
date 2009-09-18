using System;

/**
 * Contains the event information.  Name of employee who was fired and the
 * reason why.  When the event is raised this information will be passed.
 */
class EmployeeFiredEventArgs : EventArgs
{
    public EmployeeFiredEventArgs(string name, string reason)
    {
        this.name = name;
        this.reason = reason;
    }

    public string Name
    {
        get { return name; }
    }

    public string Reason
    {
        get { return reason; }
    }

    string name;
    string reason;
}

/**
 * This class is responsible for handling the event
 */
class EmployeeFiredNotify
{
    // defines the prototype of the callback function
    // a consumer of the event will have to provide a method with this
    // prototype.
    public delegate void EmployeeFiredEventHandler(object sender,
        EmployeeFiredEventArgs e);

    // consumers of this event will assign their callback methods to this
    // member (using += operator)
    public event EmployeeFiredEventHandler OnEmployeeFiredHandler;

    protected void OnEmployeeFired(EmployeeFiredEventArgs e)
    {
        if (OnEmployeeFiredHandler != null)
        {
            OnEmployeeFiredHandler(this, e);
        }
    }

    public void NotifyEmployeeFired(string name, string reason)
    {
        OnEmployeeFired(new EmployeeFiredEventArgs(name, reason));
    }
}

class EmployeeFiredWatch
{
    public EmployeeFiredWatch(EmployeeFiredNotify employeeFiredNotify)
    {
        this.employeeFiredNotify = employeeFiredNotify;
        employeeFiredNotify.OnEmployeeFiredHandler +=
            new EmployeeFiredNotify.EmployeeFiredEventHandler(EmployeeFired);
    }

    public void EmployeeFired(object sender, EmployeeFiredEventArgs e)
    {
        Console.WriteLine("Employee Fired: {0}\n{1}\n", e.Name, e.Reason);
    }

    EmployeeFiredNotify employeeFiredNotify;
}

class Test
{
    public static void Main()
    {
        EmployeeFiredNotify employeeFiredNotify = new EmployeeFiredNotify();
        EmployeeFiredWatch employeeFiredWatch =
            new EmployeeFiredWatch(employeeFiredNotify);
        employeeFiredNotify.NotifyEmployeeFired("Brian Pfeil", "Slacker");
    }
}        
