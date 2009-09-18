using System;
using log4net;
using log4net.Config;

public class MyApp 
{
	// Define a static logger variable so that it references the
	// Logger instance named "MyApp".
	private static readonly ILog log = LogManager.GetLogger(typeof(MyApp));

	static void Main(string[] args) 
	{
        DOMConfigurator.Configure(new System.IO.FileInfo("log4net-config.xml"));
		log.Info("Entering application.");
		log.Info("Exiting application.");
	}
}
