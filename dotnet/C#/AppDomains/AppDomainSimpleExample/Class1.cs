using System;
using System.Reflection;

namespace AppDomainSimpleExample
{
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
			// Create application domain setup information.
			AppDomainSetup domaininfo = new AppDomainSetup();
			domaininfo.ApplicationBase = @"C:\data\dev\c#\appdomains\AppDomainSimpleExampleSupport\bin\Debug";

			// Create the application domain.
			AppDomain domain = AppDomain.CreateDomain("MyDomain", null, domaininfo);

			// Write application domain information to the console.
			Console.WriteLine("Host domain: " +    AppDomain.CurrentDomain.FriendlyName);
			Console.WriteLine("new domain: " + domain.FriendlyName);
			Console.WriteLine("Application base is: " +    domain.BaseDirectory);
			Console.WriteLine("Relative search path is: " +    domain.RelativeSearchPath);
			Console.WriteLine("Shadow copy files is set to: " + domain.ShadowCopyFiles);

			// load class from assembly into the AppDomain
			domain.CreateInstance("AppDomainSimpleExampleSupport", "AppDomainSimpleExampleSupport.Class1");

			// Unload the application domain.
			AppDomain.Unload(domain);

		}
	}
}
