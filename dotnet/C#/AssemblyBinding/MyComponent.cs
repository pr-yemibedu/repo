[assembly: System.Reflection.AssemblyVersion("1.0.0.2")]
[assembly: System.Reflection.AssemblyKeyFile("MyComponent.snk")]
namespace MyComponent
{
    public class MyClass
    {
        public MyClass()
        {
            _version = typeof(MyClass).Assembly.FullName;
        }

        public string Version
        {
            get { return _version; }
            set { _version = value; }
        }

        private string _version;
    }
}
