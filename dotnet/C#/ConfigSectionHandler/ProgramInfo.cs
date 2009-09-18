using System;
using System.Xml.Serialization;

namespace ConfigSectionObjects
{
	/// <summary>
	/// Summary description for ProgramInfo.
	/// </summary>
	/// 
	public class ProgramInfo
	{
		public ProgramInfo()	{}
		
		public string Name;
		public string Language;
		private string _Level;
		public string Level 
		{
			get {return _Level;}
			set {_Level=value;}
		}
	}
}
