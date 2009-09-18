require 'win32/process'

require "rubyscript2exe"
exit if RUBYSCRIPT2EXE.is_compiling?

while true
  Process.fork "notepad.exe"
  Process.wait
end

