require 'win32ole'
require 'pp'

outlook = WIN32OLE.new('Outlook.Application')
mapi = outlook.GetNameSpace('MAPI')

address_lists = WIN32OLE.new('Redemption.AddressLists')
puts address_lists.ole_methods
pp address_lists.Item(1).ole_methods
#pp address_lists.Item(1).Name

address_lists.Count.times do |i|
  index = i + 1
  puts "address_lists.Item(#{index}) = " + address_lists.Item(index).Name
end

address_list = address_lists.Item(1)

address_list.AddressEntries.Count
(0..2).each do |i|
  index = i + 1
  address = address_list.AddressEntries.Item(index)
  pp address.Name
  pp address.Fields.ole_methods
end