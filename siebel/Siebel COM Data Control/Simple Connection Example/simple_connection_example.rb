# This is only used to connect directly ot a siebel server
# This should not be used on the client side in mobile environments
require "win32ole"
require 'yaml'

SiebelApplication = WIN32OLE.new("SiebelDataControl.SiebelDataControl")
SiebelApplication.Login "host=\"siebel.TCPIP.NONE.NONE://uswpsiebsrv01:2321/SBA_80/ePharmaObjMgr_enu\"", "SADMIN","SADMIN"
errCode = SiebelApplication.GetLastErrCode()
if errCode != 0 then
  ErrText = SiebelApplication.GetLastErrText
  puts ErrText
else
  puts "Connected"
end
