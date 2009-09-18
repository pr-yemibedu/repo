using System;
using System.Collections.Generic;
using System.Text;

using System.Runtime.InteropServices;
using System.ComponentModel;
using System.IO;

namespace DataServiceManager
{
    [ComVisible(true)]
    [Guid("AFA0D3C8-0F9F-4e05-9C3F-C08D3E152E96")]
    [ProgId("DataServiceManager.Services")]
    public class Services
    {
     
        public Services()
        {
            ReadFile(@"c:\temp\a.txt");
            _serviceName = "HCP Service Module";
        }

        public string load(string serviceName)
        {
            _serviceName = serviceName;
            return "ServiceName = " + _serviceName + " loaded " + ReadFile(@"c:\temp\a.txt");
        }

        public string GetData(string id)
        {
            return "data for " + id;
        }

        private string _serviceName = string.Empty;

        public string ServiceName
        {
            get
            {
                return _serviceName;
            }

            set
            {
                _serviceName = value;
            }
        }

        public static string ReadFile(string logFileName)
        {
            if (!File.Exists(logFileName))
            {
                throw (new FileNotFoundException(
                  "logfile cannot be read since it does not exist.", logFileName));
            }
            string contents = "";

            using (FileStream fileStream = new FileStream(logFileName,
                        FileMode.Open,
                        FileAccess.Read,
                        FileShare.None))
            {
                using (StreamReader streamReader = new StreamReader(fileStream))
                {
                    contents = streamReader.ReadToEnd();
                }
            }

            return contents;
        }

    }
}
