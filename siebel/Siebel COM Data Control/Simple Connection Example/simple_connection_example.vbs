Dim errCode

Set SiebelApplication = CreateObject("SiebelDataControl.SiebelDataControl")
SiebelApplication.Login "host=""siebel.TCPIP.NONE.NONE://uswpsiebsrv01:2321/SBA_80/ePharmaObjMgr_enu""", "SADMIN","SADMIN"

errCode = SiebelApplication.GetLastErrCode()
If errCode <> 0 Then
  ErrText = SiebelApplication.GetLastErrText
  Msgbox ErrText
Else
  msgbox "Connected"
End If

set contactBO = SiebelApplication.GetBusObject("Contact")
set contactBC = contactBO.GetBusComp("Contact")
contactBC.ActivateField("First Name")
contactBC.ExecuteQuery(1)
contactBC.FirstRecord
msgbox contactBC.GetFieldValue("First Name")
contactBC.NextRecord
msgbox contactBC.GetFieldValue("Last Name")


