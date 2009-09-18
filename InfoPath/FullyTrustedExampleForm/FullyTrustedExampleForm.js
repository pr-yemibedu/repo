/***************************************************************************

         Copyright  Microsoft Corporation, All rights reserved.             

    This code sample is provided "AS IS" without warranty of any kind.

***************************************************************************/

var gobjApplication = null;
var fNewInstance = false;
var strFormPath = "FullyTrustedExampleForm.xsn";

function MessageDialogOkCancel(text)
{
	var objWshShell = WScript.CreateObject("WScript.Shell");

	input = objWshShell.Popup(text, 0, "Microsoft Office InfoPath Form Registering Script", 4);
	
	if(input == 6)
		return true;
	else
		return false;
}

function Main()
{
	var fInstall = true;
	var fSilent = false;
	var fNameFromArg = false;
	var i;
	var strScriptDir = "";

	var args = WScript.Arguments;
	
	var objFso = WScript.CreateObject("Scripting.FileSystemObject");
	
	strScriptDir = objFso.GetParentFolderName(WScript.ScriptFullName);
	if(strScriptDir.length > 0
		&& strScriptDir.charAt(strScriptDir.length - 1) != "\\")
	{
		strScriptDir += "\\";
	}
	
	for(i = 0; i < args.length; i++)
	{
		var strArg = args.Item(i);
		
		strArg = strArg.toLowerCase();

		if(strArg == "/install")
			fInstall = true;
		else if(strArg == "/uninstall")
			fInstall = false;
		else if(strArg == "/silent")
			fSilent = true;
		else if(strArg == "/d")
		{
			i++;
			strScriptDir = args.Item(i);
			if(strScriptDir.length > 0
				&& strScriptDir.charAt(strScriptDir.length - 1) != "\\")
			{
				strScriptDir += "\\";
			}
		}
		else if(strArg == "/?" || strArg == "/h" || strArg == "/help")
		{
			WScript.Echo("Microsoft Office InfoPath Form Registration Script.\n"
				+ "Copyright (C) Microsoft Corporation 2003. All rights reserved.\n\n"
				+ "Usage:\n"
				+ "   [cscript | wscript] thisfile [/install | /uninstall] [/silent]\n"
				+ "                                [/d <path>] [/? | /h | /help]\n"
				+ "\n"
				+ "Options:\n"
				+ "   /install          register form " + strFormPath + " (default)\n"
				+ "   /uninstall        unregister form " + strFormPath + "\n"
				+ "   /silent           perform silent registration\n"
				+ "   /d <path>         location of the form " + strFormPath + "\n"
				+ "   /? | /h | /help   show this help\n");
			return;
		}
		else if(strArg.charAt(0) == "/")
		{
			WScript.Echo("Invalid parameter - " + strArg);
			return;
		}
		else if(strArg.charAt(0) != "/" && strArg.charAt(0) != "-" && !fNameFromArg)
		{
			strFormPath = strArg;
			fNameFromArg = true;
		}
		else
		{
			WScript.Echo("Invalid parameter - " + strArg);
			return;
		}
	
	}
	
	strFormPath = strScriptDir + strFormPath;
	
	try
	{
		var fResult = 1;
		if(!fSilent)
			fResult = MessageDialogOkCancel ("Would you like to "
						+ (fInstall ? "register" : "unregister")
						+ " form template "
						+ strFormPath
						+ "?"); 
			
		if(fResult == 1 /*Ok*/)
		{
			if(objFso.FileExists(strFormPath))
			{
				var strAbsolutePath = objFso.GetAbsolutePathName(strFormPath);

				if(!fSilent)
					WScript.Echo((fInstall ? "Registering" : "Unregistering") + " form " + strFormPath + "...");
					
				if (gobjApplication == null)
				{
					try
					{
						gobjApplication = GetObject("","InfoPath.ExternalApplication");
					}
					catch(ex)
					{
					}
				}
		
				if (gobjApplication == null)
				{
					gobjApplication = WScript.CreateObject("InfoPath.ExternalApplication");
					if(gobjApplication)
						fNewInstance = true;
				}
				
				WScript.Sleep(1000);

				if(gobjApplication && fInstall)
				{
					try
					{
						gobjApplication.RegisterSolution(strAbsolutePath, "new-only");
					}
					catch (ex)
					{
						if ((ex.number & 0x7FFFFFFF) == 0x00043002)
						{
							if(!fSilent)
								WScript.Echo("The form is already installed on this computer. You must uninstall the current form before you can install a new version of the form.");
							WScript.Quit(0);
						}
						else
						{
							throw (ex);
						}
					}
					if(!fSilent)
						WScript.Echo("Form " + strFormPath + " registered successfully.");
				}
				else if(gobjApplication)
				{
					gobjApplication.UnregisterSolution(strAbsolutePath);
					if(!fSilent)
						WScript.Echo("Form " + strFormPath + " unregistered successfully.");
				}
				else if (!fSilent)
					WScript.Echo("InfoPath not installed... Abort " 
						+ (fInstall ? "installation" : "uninstallation") 
						+ " of " 
						+ strFormPath);
			}
			else if (!fSilent)
			{
				WScript.Echo("File " 
					+ strFormPath 
					+ " not found. Abort " 
					+ (fInstall ? "installation" : "uninstallation")
					+ "."); 
			}
		}
		else if (!fSilent)
		{
			WScript.Echo("Cancelled.");
			WScript.Quit(0);
		}
	}
	catch (ex)
	{
		WScript.Echo("An error occurred while attempting to " 
			+ (fInstall ? "register" : "unregister")
			+ " the form:\n" 
			+ ex.description);
		return 1;
	}
	finally
	{
		if (gobjApplication != null && fNewInstance)
			gobjApplication.Quit();
		return 0;
	}
}

Main();