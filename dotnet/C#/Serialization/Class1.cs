using System;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Formatters.Soap;
using System.Collections;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

namespace Serialization
{
	[Serializable]
	[XmlRootAttribute("Person", Namespace="", IsNullable=false)]
	public class Person
	{
		public Person()
		{
		}

		public Person(string name, int age, ArrayList hobbies)
		{
			this.name = name;
			this.age = age;
			this.hobbies = hobbies;
		}

		[XmlElement]
		public string name;

		[XmlElement]
		public int age;

		[XmlArray ("Hobbies"), XmlArrayItem("Hobby", typeof(string))]
		public ArrayList hobbies = new ArrayList();
	}

	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	class Class1
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			ArrayList hobbies = new ArrayList();

			hobbies.Add("Skiing");
			hobbies.Add("Biking");
			hobbies.Add("Snowboarding");

			Person person = new Person("Brian Pfeil", 28, hobbies);
			
			// Binary formatter
			IFormatter formatter = new BinaryFormatter();
			formatter.Serialize(Console.OpenStandardOutput(), person);
			Console.WriteLine("End Binary Formatter output.  Press enter to continue ...");
			Console.Read();

			// SOAP formatter
			formatter = new SoapFormatter();
			formatter.Serialize(Console.OpenStandardOutput(), person);
			Console.WriteLine("End Soap Formatter output.  Press enter to continue ...");
			Console.Read();

			//XmlSerializer xmlSerializer = new XmlSerializer(typeof(Person));
			//xmlSerializer.Serialize(Console.Out, person);
			
			Console.Read();
		}
	}
}
