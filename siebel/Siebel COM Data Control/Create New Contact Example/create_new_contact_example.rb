# This is only used to connect directly ot a siebel server
# This should not be used on the client side in mobile environments
require "win32ole"
require 'yaml'

module SiebelQueryConstants
  FORWARD_BACKWARD = 0
  FORWARD_ONLY = 1
end

module SiebelNewRecordConstants
  NEW_BEFORE = 0
  NEW_AFTER = 1
  NEW_BEFORE_COPY = 2  
  NEW_AFTER_COPY = 3
end

include SiebelNewRecordConstants

def get_siebel_application(hostname, enterprise_name, object_manager, user, password)
  siebel_application = WIN32OLE.new("SiebelDataControl.SiebelDataControl")
  siebel_application.Login "host=\"siebel.TCPIP.NONE.NONE://#{hostname}:2321/#{enterprise_name}/#{object_manager}\"", user, password
  error_code = siebel_application.GetLastErrCode()
  raise Exception.new(siebel_application.GetLastErrText) if error_code != 0
  siebel_application
end

siebel_application = get_siebel_application('uswpsiebsrv01', 'SBA_80', 'ePharmaObjMgr_enu', 'SADMIN', 'SADMIN')

contactBO = siebel_application.GetBusObject("Contact")
contactBC = contactBO.GetBusComp("Contact")

contacts = [{'First Name' => 'John', 'Last Name' => 'Smith'}, {'First Name' => 'Ardy', 'Last Name' => 'Lange'}]
contactBC.NewRecord(NEW_AFTER) # create new record

contacts.each do |contact|
  # set the values for the contact
  contact.each_pair { |field_name, field_value| contactBC.SetFieldValue(field_name, field_value) }
  
  # save/write record
  contactBC.WriteRecord
end

# fields we want to display data for
CONTACT_BC_FIELDS = ['Last Name', 'First Name', 'Full Name', 'Comment']

# specify the fields we'd like to return data for in our query
CONTACT_BC_FIELDS.each{ |f| contactBC.ActivateField(f) }
contactBC.ExecuteQuery(FORWARD_ONLY)
contactBC.FirstRecord

begin
  # display fields and their values for the record
  puts CONTACT_BC_FIELDS.collect{ |f| f + ": " + contactBC.GetFieldValue(f) }.join("\n")
end while contactBC.NextRecord

#puts contactBC.ole_methods.collect{|m| m.to_s }.sort.grep(/.*/).join("\n")


