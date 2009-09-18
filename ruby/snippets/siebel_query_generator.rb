#
# Reads the data embedded at end of file and creates a Siebel query
#

lines = DATA.readlines.select{ |line| line.strip.length != 0 } # remove blank lines
lines = lines.sort.uniq # sort and get unique lines
puts "line count: #{lines.size}"
puts "query: " + lines.collect { |line| "\"#{line.strip}\"" }.join(' OR ')
puts "Lines sorted:\n" + lines.sort.join

__END__
Home Page View (LS)
Account List View
Account Detail - Activities View
All Account List View
Pharma Account Affiliations View
Account Assessment View
Pharma Account Roles View
Account Detail - Activities View
LS Account Account Business Plan View
Account Explorer View
Account Sales Team View
Pharma Account Department View
Visible Contact List View
Contact Detail View
Contact List View

Pharma Professional Role View
Pharma Professional Affiliation View
MRK Contact Coverage View
MRK Contact More Info View
Contact Assessment View
MRK Contact Best Time View
Activity List View
MRK Activity Overview View
LS My Account Business Plan View
LS All Account Business Plan View
MRK LS Account Business Plan Objective View
LS Account Business Plan Key Contact View
LS Account Business Plan Key Contact Organization Analysis View
LS Account Business Plan Key Account View
User Profile Default View
Page Tab Layout View
