# This is only used to connect directly ot a siebel server
# This should not be used on the client side in mobile environments
require "win32ole"
require 'yaml'
require 'dbi'

options = {}
options[:hostname] = 'usctap1198'
options[:enterprise_name] = 'SFA_DEV'
options[:object_manager] = 'ePharmaObjMgr_enu'
options[:siebel_username] = 'sadmin'
options[:siebel_password] = 'sadmin'
options[:db_name] = 'SFADEV01'
options[:db_username] = 'sadmin'
options[:db_password] = 'sadmin'

dbh = DBI.connect('DBI:OCI8:SFADEV01', 'sadmin', 'sadmin')
exit 

def get_business_component_fields(business_component_name)
  c = DBI.connect('DBI:ODBC:SFADEV01', 'SADMIN', 'SADMIN')
  rs = []
  c.execute("SELECT bc.name bcn, f.name fn  FROM siebel.S_BUSCOMP bc, siebel.S_FIELD f WHERE bc.name = '#{business_component_name}' AND bc.row_id = f.buscomp_id") do |shd|
    shd.fetch_hash { |h| rs << h }
  end
  rs.collect{ |r| r['FN']}
end
#puts get_business_component_fields("Internal Product - ISS Admin")
#exit

class SiebelApplication
  
  def initialize(options = {}, &block)
    @options = options
    yield self
  end
  
end

def get_siebel_application(hostname, enterprise_name, object_manager, user, password)
  siebel_application = WIN32OLE.new("SiebelDataControl.SiebelDataControl")
  siebel_application.Login "host=\"siebel.TCPIP.NONE.NONE://#{hostname}:2321/#{enterprise_name}/#{object_manager}\"", user, password
  error_code = siebel_application.GetLastErrCode()
  raise Exception.new(siebel_application.GetLastErrText) if error_code != 0
  siebel_application
end

siebel_application = get_siebel_application('usctap1198', 'SFA_DEV', 'ePharmaObjMgr_enu', 'SADMIN', 'SADMIN')

# fields we want to display data for
CONTACT_BC_FIELDS = get_business_component_fields("Internal Product - ISS Admin")

contactBO = siebel_application.GetBusObject("Admin ISS Product Definition")
contactBC = contactBO.GetBusComp("Internal Product - ISS Admin")

# specify the fields we'd like to return data for in our query
CONTACT_BC_FIELDS.each{ |f| contactBC.ActivateField(f) }
contactBC.ExecuteQuery(1)
contactBC.FirstRecord

begin
  # display fields and their values for the record
  puts CONTACT_BC_FIELDS.collect{ |f| f + ": " + contactBC.GetFieldValue(f) }.join("\n")
end #while contactBC.NextRecord

#puts contactBC.ole_methods.collect{|m| m.to_s }.sort.grep(/.*/).join("\n")
#puts contactBC.GetTypeInfo.to_yaml


