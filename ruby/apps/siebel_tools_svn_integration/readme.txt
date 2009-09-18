== Prerequisites ==

Subversion command line tools version 1.4.2+

== Install Steps ==

1. Copy the .bat and .exe file in this directory to 
 c:\Program Files\Siebel\8.0\Tools\bin
 
2. Open Siebel Tools then View -> Options and select the "Check In/Out" tab
3. check "Enable source code control integration"
4. check "Show execution of integration batch file"
5. set "Integration batch file:" to point to "c:\Program Files\Siebel\8.0\Tools\bin\siebel_tools_svn_source_code_control.bat"

NOTE: The source code control integration script does not get called when a checkout is performed.
          Both the checkin and checkout into subversion happen when you do a checkin w/in Siebel Tools
