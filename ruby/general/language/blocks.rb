#----------------------------------------------------------------------------
# function that will execute the given block 2 times
def callBlock
  yield
  yield
end

# execute block 2 times
callBlock { puts "In the block" }

#----------------------------------------------------------------------------
# function that will execute the given block and pass it a parameter
def callBlockWithParameter(p)
	yield p
end 

callBlockWithParameter(88) { |x| puts "paramter = #{x}"}

#----------------------------------------------------------------------------
# parameterized function that returns a new functions (currying)
def nTimes(aThing)  
  return proc { |n| aThing * n }  
end

# define a new function
fiveTimes = nTimes(5)
puts fiveTimes.call(10)

#----------------------------------------------------------------------------
def fn(name, &fn1)
  if block_given? # check if a block was passed as an arg
    fn1.call # call the block
  end
  puts name
end

fn("Brian") { puts "Hello" }
