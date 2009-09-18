These keys must exists for the COM/ActiveX to not throw warning when scripting in IE:
HKEY_CLASSES_ROOT\CLSID\<Your COM exposed .NET class GUID>\Implemented Categories\{7DD95801-9882-11CF-9FA9-00AA006C42C4}
HKEY_CLASSES_ROOT\CLSID\<Your COM exposed .NET class GUID>\Implemented Categories\{7DD95802-9882-11CF-9FA9-00AA006C42C4}