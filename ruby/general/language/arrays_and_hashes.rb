#----------------------------------------------------------------------------
# arrays
[1, 2, 3]
['coat', 'mittens', 'snowboard']

# print each array element
[1, 2, 3].each { |i| puts i }

# create an array from a range and print each array element
(1..3).each { |i| puts i }

# find each array element that matches the condition
a = [0, 1, 2, 3]
puts a.find_all { |i| i < 2 }

# array length
a.length

# combine all elements into string separated by the specified delimiter
puts a.join(",")

# apply block to each element and create array from returned elements
a = [ "a", "b", "c", "d" ]
a.collect {|x| x + "::" }

# demonstrate the use of the array to argument list expansion operator (*)
def three_args(a,b,c)
  puts "a=#{a}, b=#{b}, c=#{c}"
end
three_args(*[1,2,3,])

#----------------------------------------------------------------------------
# hash tables
person = {
  'age' => 28,
  'height' => '6 2',
  'name' => 'Brian Pfeil'
}

# iterating over key/value pairs
person.each { |key, value| puts "key=#{key}, value=#{value}" }

for key, value in person
  puts "#{key}=#{value}"
end


