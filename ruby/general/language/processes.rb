require 'pp'

#----------------------------------------------------------------------------
# execute dir command and store results in result
result = `dir /b`.split
pp result

# start notepad and store whether it started or not (true or false) in result
result = system("notepad.exe")
pp "exit code = #{$?}"
pp result