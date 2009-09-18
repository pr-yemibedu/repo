using System;
using System.Configuration;

namespace ConfigSectionDemo
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	class Demo
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			Demo d1=new Demo();
			d1.Run();
		}

		private void Run() 
		{
			try 
			{
				ConfigSectionObjects.ProgramInfo pi=(ConfigSectionObjects.ProgramInfo)ConfigurationSettings.GetConfig("ProgramInfo");
				Console.WriteLine ("Program: {0}", pi.Name);
				Console.WriteLine("Language: {0}", pi.Language);
				Console.WriteLine ("Level: {0}", pi.Level);
			} 
			catch (System.Configuration.ConfigurationException configEx) 
			{
				Console.WriteLine (configEx.ToString());
			}
		}
	}
}
