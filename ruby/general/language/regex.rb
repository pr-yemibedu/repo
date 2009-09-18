#----------------------------------------------------------------------------
/ruby/
/[0-9]+/
/^\d{3}-\d{3}-\d{4}/

puts "match" if "Perl" =~ /Perl/
puts "match" if "12:34:56" =~ /\d\d:\d\d:\d\d/

#----------------------------------------------------------------------------
str = "Dear <name>, You owe us <cost>"
str.gsub!( /<(.*?)>/ ) { 

  if ( $1 == "name" )
	"jack"
  elsif ( $1 == "cost" )
	"$20"
  else
	""
  end
}

print "#{str}\n"

#----------------------------------------------------------------------------
if ( "file.txt" =~ /[.]txt$/ )
  print "File name matched\n"
else
  print "File name did not match\n"
end

#----------------------------------------------------------------------------
"a=1;b=2;c=3;".scan( /(.*?)=(.*?);/ ) { |key,value|
  print "#{key} : #{value}\n"
}

#----------------------------------------------------------------------------
str = "jack\td\therrington".gsub( /\t/, "," )
print "#{str}\n"

#----------------------------------------------------------------------------
name = 'Jack'
cost = '$20'
template = 'Dear <name>, You owe us <cost>'

output = template
output.gsub!( /<(.*?)>/ ) {
  eval( $1 )
}
print "#{output}\n"

s = "H"
s = s[0,1].downcase + s[1..-1]
print s