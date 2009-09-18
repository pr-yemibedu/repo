# Provides a stand-alone rake shell exe.  It tries to load Rake tasks from
# a centralized Rakefile (network share)
# 
# usage: rake_shell.exe [task name]
# e.g. rake_shell.exe insight:start
# NOTE: This file must be ran through RubyScript2Exe to create the exe.
#       All the standard Rake options are supported

require "rubyscript2exe"
require 'rubygems'
gem 'rake', ">= 0.7.3"
require 'rake'
require 'fileutils'
exit if RUBYSCRIPT2EXE.is_compiling?
#Rake.application.init(File.basename(__FILE__))
Rake.application.init("")

# run the contents of the specified file through the ruby interpreter (eval)
def load_require path
  eval File.readlines(path).join
end

unless ENV['Rakefile'] && File.exists?(ENV['Rakefile'])
  ENV['Rakefile'] = RUBYSCRIPT2EXE.exedir("Rakefile")
end

if File.exists?(ENV['Rakefile'])
  puts "Using: " + ENV['Rakefile'] + "\n"  
else
  puts "No Rakefile available"
  exit
end

load_require ENV['Rakefile']
Rake.application.top_level