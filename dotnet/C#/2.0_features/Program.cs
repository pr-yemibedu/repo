using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace features
{
    public static class Program
    {
        static void Main(string[] args)
        {
            GenericsBasics();
            AnonymousDelegateBasics();
            IteratorsBasics();
            PartialClassesBasics();
            NewDelegatesBasics();
            StaticClassBasics();
            GlobalNamespaceBasics();
            Console.Read();
        }

        static void GlobalNamespaceBasics()
        {
            // C# 2.0 allows you to use the global namespace qualifier global::
            // to indicate to the compiler that it should start its search at the global scope
            global::System.Diagnostics.Trace.WriteLine("It Works!");
        }

        static void StaticClassBasics()
        {
            Console.WriteLine("The Progam class is a static class.  All members are static");
        }

        static void GenericsBasics()
        {
            List<int> integers = new List<int>();
            
            integers.Add(1);
            integers.Add(2);
            integers.Add(3);
            integers.Add(4);
            
            ObjectDumper.Write(integers);
        }

        static void AnonymousDelegateBasics()
        {
            Thread thread = new Thread( delegate(object o) { Console.WriteLine("Hello from thread"); } );
            thread.Start();
            thread.Join();

            List<int> integers = new List<int>();
            
            integers.Add(2);
            integers.Add(1);
            integers.Add(4);
            integers.Add(3);
            
            integers.ForEach( delegate(int i) { Console.WriteLine(i); } );
            
            Action<int> action = new Action<int>(PrintInt);
            integers.ForEach(action);
            
            integers.Sort(Comparer<int>.Default);
            ObjectDumper.Write(integers);

            SomeClass someClass = new SomeClass();
            someClass.InvokeMethod();
            someClass.MyMethod();

            SomeClass2 someClass2 = new SomeClass2();
            someClass2.InvokeMethod();
        }

        static void NewDelegatesBasics()
        {
            int[] numbers = new int[]{1, 4, 3, 2};
            Array.Exists(numbers, delegate(int i) { return i > 2; } );
            Predicate<int> greaterThan2 = delegate(int i) { return i > 2; };
            Array.Exists(numbers, greaterThan2);
        }

        static void PrintInt(int i)
        {
            Console.WriteLine(i);
        }

        static void IteratorsBasics()
        {
            CityCollection cityCollection = new CityCollection();
           
            foreach(string city in cityCollection)
            {
                Console.WriteLine(city);
            }

            foreach(string city in cityCollection.Reverse)
            {
                Console.WriteLine(city);
            }
        }

        public static void PartialClassesBasics()
        {
            Console.WriteLine(MyPartialClass.Add(1, 1));
            Console.WriteLine(MyPartialClass.Subtract(4, 2));
        }
    }

    public partial class MyPartialClass
    {
        public MyPartialClass()
        {
        }

        public static int Add(int x, int y)
        {
            return x + y;
        }

        // Subtract(int x, int y) is in another file
    }

    public class CityCollection : IEnumerable<string>
    {
        private string[] cities = {"New York","Paris","London"};
        
        IEnumerator<string> IEnumerable<string>.GetEnumerator()
        {
          for(int i = 0; i < cities.Length; i++)
             yield return cities[i];
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
          return  ((IEnumerable<string>)this).GetEnumerator();
        }

        public IEnumerable<string> Reverse
        {
          get
          {
             for(int i = cities.Length - 1; i >= 0; i--)
                yield return cities[i];         
          }
        }
    }

    class SomeClass
    {
        string m_Space = " ";
       delegate void SomeDelegate();
        delegate void SomeDelegate1(string name);

       public void InvokeMethod()
       {
          SomeDelegate del = delegate() 
                             {
                                 Console.WriteLine("Hello from InvokeMethod");
                             };
          del();   
       }

        public void MyMethod()
        {
            string msg = "Hello";
            SomeDelegate1 del = delegate(string name)
                                {
                                    Console.WriteLine(msg + m_Space + name);
                                };
            del("Juval");   
        }
    }

    class SomeClass2
    {   
       delegate void SomeDelegate<T>(T t);   
       public void InvokeMethod()   
       {      
          SomeDelegate<int> del = delegate(int number) 
                                  { 
                                     Console.WriteLine(number.ToString()); 
                                  };      
          del(3);   
       }
    }
}
