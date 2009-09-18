# reference for rubyscript2exe: http://www.erikveen.dds.nl/rubyscript2exe
# to compile to exe:
# rubyscript2exe rubyscript2exe_usage.rb

require "rubyscript2exe"

# will exit here if compiling
if RUBYSCRIPT2EXE.is_compiling?
  # add the rar.exe to the archive
  RUBYSCRIPT2EXE.bin = ["rar.exe"]
  exit
end

# directory where exe was launched from
p "RUBYSCRIPT2EXE.userdir = #{RUBYSCRIPT2EXE.userdir}"

# directory where script is running
p "RUBYSCRIPT2EXE.appdir = #{RUBYSCRIPT2EXE.appdir}"

# run the utility exe (rar.exe) we bundled with our script
p "Running rar.exe"
system RUBYSCRIPT2EXE.exedir('rar.exe')

# so we can see output
p "Press enter to continue ..."
gets