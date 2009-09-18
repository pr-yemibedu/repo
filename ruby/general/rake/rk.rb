# creates a self-contained standalone rk.exe which functions just like rake
require 'rubygems'
require 'rake'
require 'yaml'

# add any requires needed by your Rakefile
#require "Rakefile"

require 'rubyscript2exe'
exit if RUBYSCRIPT2EXE.is_compiling?

Rake.application.run