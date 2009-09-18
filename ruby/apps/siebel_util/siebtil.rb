# Provides various utilities related to Siebel
#
# To build allinone exe run the following command
#   rubyscript2exe siebtil.rb 
#   // output: siebtil.exe
# 
# usage: siebtil.exe [task name]
# e.g. siebtil.exe mobile_web_client:kill_processes

require "rubyscript2exe"
require 'rubygems'
require 'socket'
require 'rake'
require 'fileutils'
require 'utility_pack'
require 'rubysiebel'
  
# will exit here if compiling
if RUBYSCRIPT2EXE.is_compiling?
  # add the archive/compression utilities to the archive
  RUBYSCRIPT2EXE.bin = %w( 7za.exe 7z.sfx 7zCon.sfx rar.exe Default.sfx )
  exit
end

# if no task has been specified, then show available tasks
if ARGV.length == 0
  puts "\nNo task specified to run."
  puts "\nExample usage: siebtil.exe mobile_web_client:backup\n\n"
  puts "Available tasks:"
  ARGV << "--tasks"
end

Rake.application.init("")

# BEGIN: Define tasks

namespace 'mobile_web_client' do

  desc 'kill all Siebel Mobile Web Client processes'
  task :kill_processes do
    RubySiebel::MobileWebClient.kill
  end
  
  desc 'backs up the db, srf, www, and web template directories'
  task :backup => [:kill_processes] do
    backup_path = ENV['BACKUP_PATH'] || "mobile_web_client_backup_#{Socket.gethostname}_#{UtilityPack::DateTimeHelpers.timestamp_for_filename}.exe"
    rm_f backup_path
    RubySiebel::MobileWebClient.backup backup_path
  end
  
  desc 'clears the Internet Explorer cache'
  task :clear_ie_cache do
    UtilityPack::InternetExplorerHelpers.clear_cache
  end

end

# End: Define tasks

# tell rake to process
Rake.application.top_level


