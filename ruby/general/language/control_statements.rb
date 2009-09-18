#----------------------------------------------------------------------------
# if
count = 1
if count > 10
  puts "Try again"
elsif count == 3
  puts "You lose"
else
  puts "Enter a number"
end

puts "you'll see this" if count < 10

#----------------------------------------------------------------------------
# unless (inverse of if)
count = 5
puts "you'll see this" unless count < 5

#----------------------------------------------------------------------------
# looping
count = 1
while count < 100 and count <= 30
  count+=1
end

count = 2
count = count*count  while count < 1000