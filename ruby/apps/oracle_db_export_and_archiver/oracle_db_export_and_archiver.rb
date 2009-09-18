# This script backs up a Siebel environment.
# 1. Performs a full export of the specified Oracle db
# 2. Copies the inuse .srf
# 3. Creates a compressed archive of the export and .srf
#
# This script is compiled to an executable (exe) via rubyscript2exe
# The following is the command to build the exe:
# rubyscript2exe SCRIPT_NAME
#
# Author: Brian Pfeil
# Change log:
# 2008-04-07: initial

require 'rubygems'
require 'rubyscript2exe'
require 'fileutils'
require 'utility_pack'

include FileUtils
include UtilityPack

# will exit here if compiling to exe
exit if RUBYSCRIPT2EXE.is_compiling?

# variables
# change these to match you environment
root_archive_dir_path = "D:\\ora_export\\"
siebel_srf_file_name = "siebel_sia.srf"
siebel_srf_path = "\\\\usctap1198\\d$\\sba80\\siebsrvr\\OBJECTS\\ENU\\#{siebel_srf_file_name}"
archive_dir_path = "#{root_archive_dir_path}#{DateTimeHelpers::timestamp_for_filename}\\"
oracle_username = 'system'
oracle_password = 'password'
db_export_file_name = 'export.dmp'
db_export_log_file_name = 'export.log'

# logic
rm_rf archive_dir_path
mkdir_p archive_dir_path
cd archive_dir_path do |dir|
  # full db export
  `exp #{oracle_username}/#{oracle_password} FULL=y FILE=#{db_export_file_name} LOG=#{db_export_log_file_name}`
  
  # copy .srf locally
  cp siebel_srf_path, '.'
  
  # archive & compress export and .srf files
  `rar a -m5 export.rar *.*`
  
  # delete working files
  rm_f %w( export.dmp export.log ) << siebel_srf_file_name # delete the db export and .srf files 
end
