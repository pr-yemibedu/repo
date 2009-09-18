require 'rubysiebel'
require 'yaml'

include RubySiebel

options = {}
options[:hostname] = 'usctap1198'
options[:enterprise_name] = 'SFA_DEV'
options[:object_manager] = 'ePharmaObjMgr_enu'
options[:siebel_username] = 'sadmin'
options[:siebel_password] = 'sadmin'
options[:db_name] = 'SFADEV01'
options[:db_username] = 'sadmin'
options[:db_password] = 'sadmin'

def fields_with_values(arr)
  r = {}
  arr.each do |h|
    h.each{|key,value| r[key] = value if value and value != '' }
  end
  r
end

sample_product_field_values = {
  'Current Type' => 'Sample',
  'Lots Defined Flag' => 'Y',
  'Therapeutic Class' => 'Normal',
  'Sales Product Flag' => 'Y',
  'Sales Service Flag' => 'N',
  'Leaf Level Flag' => 'Y',
  'Product Type Code' => 'Product',
  'Orderable' => 'Y',
  'Product Level' => '3'
}

SiebelApplication.new(options) do |siebel_application|
  #business_object = siebel_application.get_business_object('Admin ISS Product Definition')
  #business_component = business_object.get_business_component('Internal Product - ISS Admin')
  business_object = siebel_application.get_business_object('Internal Product')
  business_component = business_object.get_business_component('Internal Product')  
  business_component.new_record_based_on_template_record('[Name] = "SINGULAIR 10 MG"', {'Name' => 'Merck Test Product 3'})
  business_component = nil
  #puts fields_with_values(business_component.query('[Name] = "Merck Test Product"')).sort.to_yaml
end