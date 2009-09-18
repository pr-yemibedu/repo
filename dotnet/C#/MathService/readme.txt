This web services example was pieced together using the following site:
http://samples.gotdotnet.com/quickstart/aspplus/doc/writingservices.aspx

This web service is hosted located at http://samples.gotdotnet.com/quickstart/aspplus/samples/services/MathService/VB/MathService.asmx

build steps:
wget -O MathService.wsdl http://samples.gotdotnet.com/quickstart/aspplus/samples/services/MathService/VB/MathService.asmx?WSDL
wsdl.exe /l:CS /n:MathService /out:MathService.cs MathService.wsdl
csc MathService.cs MathClient.cs
