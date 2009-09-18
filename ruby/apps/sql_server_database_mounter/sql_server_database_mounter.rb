#!/usr/bin/env ruby
require 'optparse'
require 'ostruct'
require 'yaml'
require 'tempfile'
require 'fileutils'
require 'pp'

  class OptionsParser
    
    def self.parse(args)
      options = OpenStruct.new
  
      # set default options
      options.database_name = "Insight"
      options.mdf_path = "C:\\Data\\Insight\\Insight.mdf"
      options.ldf_path = "C:\\Data\\Insight\\Insight.ldf"
  
      opts = OptionParser.new do |opts|
        opts.banner = "Usage: #{File.basename(__FILE__)} [options]"
        opts.separator ""
        opts.separator "Specific options:"
        
        opts.on("-d", "--database-name DATABASE_NAME", "A database name is required") do |database_name|
          options.database_name = database_name
        end
        
        opts.on("-m", "--mdf-path MDF_PATH", "The path to the .mdf is required") do |mdf_path|
          options.mdf_path = mdf_path
        end
        
        opts.on("-l", "--ldf-path MDF_PATH", "The path to the .ldf is required") do |ldf_path|
          options.ldf_path = ldf_path
        end        
        
        opts.on("-v", "--verbose", "Be verbose") do
          options.verbose = true
        end        
        
        opts.separator ""
        opts.separator "Common options:"
  
          # No argument, shows at tail.  This will print an options summary.
        # Try it and see!
        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
  
          # Another typical switch to print the version.
        opts.on_tail("--version", "Show version") do
          puts OptionParser::Version.join('.')
          exit
        end
                
      end
      opts.parse!(args)
      options
    end
    
  end

def l s
  puts s
end

def s s
  puts s
  system s
end

def stop_mssqlserver
  s 'net stop mssqlserver'
end

def start_mssqlserver
  s 'net start mssqlserver'
end

def restart_mssqlserver
  stop_mssqlserver
  start_mssqlserver
end

def sql_client
  "osql -U sa -P suD8u6RE -i "
end

def rmdir d
  s "rmdir /S /Q \"#{d}\""
end

def mkdir d
  s "mkdir \"#{d}\""
end

def copy a, b
  s "xcopy \"#{a}\" \"#{b}\" /Y /R /H /F"
end


options = OptionsParser.parse(ARGV)
c = YAML::load(DATA)
target_directory = ENV['TEMP'] + "\\databases\\" + options.database_name + "\\"

stop_mssqlserver

rmdir target_directory
mkdir target_directory

copy options.mdf_path, target_directory
copy options.ldf_path, target_directory

sql_command = c[:link_logins_sql]
sql_command = sql_command.gsub("{database_name}", options.database_name)
sql_command = sql_command.gsub("{mdf_path}", target_directory + File.basename(options.mdf_path))
sql_command = sql_command.gsub("{ldf_path}", target_directory + File.basename(options.ldf_path))

sql_command_file = Tempfile.new("tempfile")
sql_command_file << sql_command; sql_command_file.close

start_mssqlserver
s "#{sql_client} #{sql_command_file.path}"
restart_mssqlserver

__END__
---
:link_logins_sql: |
  EXEC sp_detach_db '{database_name}', 'true'
  go
  EXEC sp_attach_db @dbname = N'{database_name}', 
     @filename1 = N'{mdf_path}', 
     @filename2 = N'{ldf_path}'
  go  
  use Insight
  go
  exec sp_change_users_login 'Update_One', 'insight', 'insight'
  go
  exec sp_change_users_login 'Update_One', 'insight_r', 'insight_r'
  go
  use Quest
  go
  exec sp_change_users_login 'Update_One', 'quest', 'quest'
  go
  exec sp_change_users_login 'Update_One', 'quest_r', 'quest_r'
  go
  exec sp_change_users_login 'Update_One', 'insight', 'insight'
  go
  exec sp_change_users_login 'Update_One', 'insight_r', 'insight_r'
  go
  -- postrefresh sql 
  -- version 2.0.23.0
  -- 02/03/2005
  -- Rev. History:
  -- 04/07/2005 Ed Sherman - Add registry enable for Insight 

  insert into prod_dtl_grp_seq (prod_dtl_grp_nmbr, seq_nmbr) select grp_type_txt, laptop_txt from applctn_optn where grp_cd = 'Call_Details_Seq' and org_unit_nmbr = (select org_unit_nmbr from dtbs_prfl where actv_ind = 'Y' and dtbs_stts_cd = 'CT') and laptop_txt <> '-1'
  GO
  insert into smpl_prod_seq (smpl_prod_nmbr, seq_nmbr) select grp_type_txt, laptop_txt from applctn_optn where grp_cd = 'Call_Samples_Seq' and org_unit_nmbr = (select org_unit_nmbr from dtbs_prfl where actv_ind = 'Y' and dtbs_stts_cd = 'CT') and laptop_txt <> '-1'
  GO
  insert into dept_seq (dept_cd, seq_nmbr) select grp_type_txt, laptop_txt from applctn_optn where grp_cd = 'Call_Dept_Seq' and org_unit_nmbr = (select org_unit_nmbr from dtbs_prfl where actv_ind = 'Y' and dtbs_stts_cd = 'CT') and laptop_txt <> '-1'
  GO
  insert into dtl_topic_seq (dtl_topic_nmbr, seq_nmbr) select grp_type_txt, laptop_txt from applctn_optn where grp_cd = 'Call_Topics_Seq' and org_unit_nmbr = (select org_unit_nmbr from dtbs_prfl where actv_ind = 'Y' and dtbs_stts_cd = 'CT') and laptop_txt <> '-1'
  GO
  insert into fact_grp_seq (fact_grp_cd,org_unit_nmbr, seq_nmbr) select grp_type_txt, org_unit_nmbr, laptop_txt from applctn_optn where grp_cd = 'Factoid_Ctgry_Seq' and org_unit_nmbr = (select org_unit_nmbr from dtbs_prfl where actv_ind = 'Y' and dtbs_stts_cd = 'CT') and laptop_txt <> '-1'
  GO
  update dtbs_prfl set rcvry_dt = GetDate()
  GO
  use Insight
  GO
  exec sp_changedbowner 'sa'
  GO
  exec sp_change_users_login 'Update_One', 'synchro', 'synchro'
  GO
  exec sp_change_users_login 'Update_One', 'insight', 'insight'
  GO
  exec sp_addrolemember 'INSIGHT_APP_ROLE', 'insight'
  GO
  exec sp_change_users_login 'Update_One', 'insight_r', 'insight_r'
  GO
  exec sp_addrolemember 'INSIGHT_READONLY_ROLE', 'insight_r'
  GO
  sp_configure 'advanced', '1'
  GO
  RECONFIGURE with override
  GO
  sp_configure 'max server memory', '64'
  GO
  RECONFIGURE with override
  GO
  sp_updatestats
  GO

  -- Enable Insight by setting registry key: 
  -- HKEY_LOCAL_MACHINE\SOFTWARE\Merck\Insight\Laptop\Workspace\SchemaEvolutionIP = 0 

  exec master..xp_regwrite 'HKEY_LOCAL_MACHINE', 'SOFTWARE\Merck\Insight\Laptop\Workspace', 'SchemaEvolutionIP', 'REG_DWORD', 0

  -- Enable Insight Mobile Sync by setting registry key: 
  -- HKEY_LOCAL_MACHINE\SOFTWARE\Merck\Insight\Handheld\IMSync\Settings\sync.data = 1

  exec master..xp_regwrite 'HKEY_LOCAL_MACHINE', 'SOFTWARE\Merck\Insight\Handheld\IMSync\Settings', 'sync.data', 'REG_DWORD', 1
  GO


