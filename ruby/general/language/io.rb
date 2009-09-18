filename = 'testfile.txt'

#----------------------------------------------------------------------------
#read input from consolee (stdin)
print "Enter your name: "
name = gets
print "Hello #{name}"

#----------------------------------------------------------------------------
# write to file
file = File.new(filename, File::WRONLY|File::APPEND)
file.puts "Hello World"
file.close

#----------------------------------------------------------------------------
# read from file
file = File.new(filename, "r")
file.each_line {|line| puts "got #{line}"}
file.close

#----------------------------------------------------------------------------
# read from file byte at a time
File.open(filename) do |file|
	file.each_byte { |c| putc c; putc ?. }
end

#----------------------------------------------------------------------------
# read all lines into array
File.open(filename) do |file|
	lines = file.readlines.each do |line|
		line.chomp!
		puts line
	end
end