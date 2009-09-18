' NOTE: The Siebel Mobile Web Client must be launched for the following to run
Set siebWebApp = CreateObject("TWSiebel.SiebelWebApplication.1")

MsgBox "siebWebApp.ActiveViewName() = " & siebWebApp.ActiveViewName()
MsgBox "siebWebApp.LoginName() = " & siebWebApp.LoginName()
MsgBox "siebWebApp.PositionName() = " & siebWebApp.PositionName()

If Not siebWebApp Is Nothing Then


  'Create A Business Object
  Set siebBusObj = siebWebApp.GetBusObject("Contact")
  If Not siebBusObj Is Nothing Then
     'Create a Business Component
     Set siebBusComp = siebBusObj.GetBusComp("Contact")
     MsgBox "Successfully created Contact object"
  Else
     MsgBox "Failed to create object"
     errCode = siebWebApp.GetLastErrCode
     errText = siebWebApp.GetLastErrText
     TheApplication().RaiseErrorText("Business Object Creation failed: " & errCode & "::" & errText)
  End If

End If


