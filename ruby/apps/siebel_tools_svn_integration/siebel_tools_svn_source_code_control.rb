# checkout "C:\PROGRA~1\Siebel\8.0\Tools\temp\Projects\" "C:\PROGRA~1\Siebel\8.0\Tools\temp\Projects\comment_file" eCalendar.sif
# checkin "C:\PROGRA~1\Siebel\8.0\Tools\temp\Projects\" "C:\PROGRA~1\Siebel\8.0\Tools\temp\Projects\comment_file" eCalendar.sif
require 'rubygems'
require 'rubyscript2exe'
require 'highline/import'
require 'utility_pack'
require 'yaml'
require 'optparse'
require 'ostruct'
require 'fileutils'
require 'tmpdir'
require 'logger'
require 'uikit'
#require 'pp'

if RUBYSCRIPT2EXE.is_compiling?
  exit
end

include FileUtils

module RubySiebel
 
  module SiebelTools

    module SourceCodeControl
    
      module Helpers
      
      def shell command
        #command = "#{command} >nul 2>1&"
        @log.user "Executing: #{command}"
        output = `#{command}`
        # 
        return_code = $? >> 8
        @log.info output
        OpenStruct.new({:output => output, :return_code => return_code})
      end
      
      def create_directory path, log_message = nil
        if !File.exists?(path)
          if log_message
            @log.info log_message
          else
            @log.info "Creating directory at \"#{path}\""
          end
          mkdir_p path
        end
      end
      
      def file_copy src, dest
        @log.info "Copying file from \"#{src}\" to \"#{dest}\""
        cp src, dest
        File.exists?(dest)
      end
      
      def method_missing(method, *args)
        # if property being set doesn't exist, create it
        if method.to_s =~ /(.*)(=$)/
          name = $1
          value = args[0]
          instance_variable_name = "@#{name}"
          instance_variable_set instance_variable_name, value
          self.class.class_eval "attr_accessor :#{name}"
        else
          super
        end
      end        
              
      def read_ascii_string path
        s = ""
        open(path) do |f|
          while c = f.getc
            if c >= 0 and c <= 127
              s += c.chr
            end
          end    
        end
        s
      end
      
      def write_string path, s
        open(path, File::WRONLY | File::CREAT) do |f|
          f.write s
        end        
      end

    end
    
      class SubversionController  #< Logger::Application
        include Helpers
        
        attr_accessor :log_file_handle
        
        PARAMETER_NAMES = %w( operation source_file_directory_path comment_file_path source_file_name )
        EXPECTED_PARAMETER_COUNT = PARAMETER_NAMES.length
        
        def initialize(cfg = {})
          
          @log = cfg[:logger]
          
          # set all configuration values and build file and directory paths out
          cfg[:script_name] = File.basename(__FILE__, ".rb")
          cfg[:working_directory_path] = "#{Dir.tmpdir}/#{cfg[:script_name]}"
          cfg[:svn_working_directory_path] = "#{cfg[:working_directory_path]}/#{cfg[:svn_working_directory_name]}"
          cfg[:log_file_path] = "#{cfg[:working_directory_path]}/#{cfg[:script_name]}.log"
          cfg[:svn_project_directory_url] = "#{cfg[:svn_server_url]}/#{cfg[:svn_repository_name]}/#{cfg[:project_base_url_path]}/#{cfg[:svn_project_directory_name]}"
          cfg[:svn_project_directory_path] = "#{cfg[:svn_working_directory_path]}/#{cfg[:svn_project_directory_name]}"
          
          # add all configuration values as instance variables
          cfg.each {|key, value| self.send("#{key}=".to_sym, value) }
          
          @log.log_file_path = log_file_path
          @log.info("")
          @log.info("--------------------------------------------------------------------------------")
          @log.info("*** #{UtilityPack::DateTimeHelpers.timestamp_for_filename} ***")
          @log.info('')
          
          #super(script_name)
          create_directory working_directory_path
          create_directory svn_working_directory_path
          #create_directory instance_working_directory_path          
                    
          # configure logging
          #@log_file_handle = open(log_file_path, File::WRONLY | File::APPEND | File::CREAT)
          #set_log @log_file_handle
          #self.level = DEBUG

        end
                  
        # parses the command line parameters into a hash and returns it
        def parse
          @log.info "Called with the following #{parameters_array.length} parameters: #{parameters_array.join(' ')}"
          
          # make sure we have the expected arguments
          if parameters_array.length != EXPECTED_PARAMETER_COUNT
            raise "Expected #{EXPECTED_PARAMETER_COUNT} arguments and only received #{parameters_array.length}"
          end
          
          # peel off each argument and store it in our parameter container
          PARAMETER_NAMES.each do |argument_name|
            self.send("#{argument_name}=".to_sym, parameters_array.shift)
          end
          
          # construct file paths for convienence
          self.backup_directory_path = "#{working_directory_path}/backups/#{UtilityPack::DateTimeHelpers.timestamp_for_filename}_#{operation}"
          self.working_comment_file_path = File.join(backup_directory_path, File.basename(comment_file_path))
          self.backup_source_file_path = File.join(backup_directory_path, source_file_name)
          self.source_file_directory_name = File.basename(source_file_directory_path)
          self.svn_project_directory_path = "#{svn_project_directory_path}/#{source_file_directory_name}"
          self.source_file_path = File.join(source_file_directory_path, source_file_name)
          self.svn_working_file_path = File.join(svn_project_directory_path, source_file_name)
          
          @log.debug "Configuration variables: " + self.instance_variables.collect{ |name| "#{name} = #{self.instance_variable_get(name).to_s}" }.join("\n")
        end
        
        # verify the directory and file parameters exist
        def validate_parameters
          [source_file_directory_path, source_file_path, comment_file_path].each do |path|
            if !File.exists?(path)
              raise "Expected file or directory \"#{path}\" does not exist"
            end
          end
        end
        
        def backup_sources
          create_directory backup_directory_path
          cp source_file_path, backup_source_file_path
        end

        def svn_credentials_cached?
          # "svn info" command will return 0 if successful
          result = shell "svn info --non-interactive #{svn_project_directory_url}"
          result.return_code == 0
        end
        
        def svn_cache_credentials username, password
          result = shell "svn info --non-interactive --username #{username} --password #{password} #{svn_project_directory_url}"
          result.return_code == 0
        end
        
        def get_password(prompt='Password: ', mask='*')
          ask(prompt) { |q| q.echo = mask }
        end        
        
        def prompt_for_and_set_svn_credentials
          credentials_cached = false
          while !credentials_cached
            puts "Please enter your subversion credentials for the \"#{svn_repository_name}\" repository."
            #print "Username: "
            #username = STDIN.gets.chomp
            username = ask("Username: ") { |q| q.default = ENV['USERNAME'] if ENV['USERNAME'] }
            #print "Enter password: "
            #password = STDIN.gets.chomp
            password = get_password
            #credentials_dialog = UIKit::CredentialsDialog.new("Subversion Credentials", "Please enter your subversion credentials for the \"#{svn_repository_name}\" repository")
            #username, password = credentials_dialog.show
            credentials_cached = svn_cache_credentials(username, password)
            if !credentials_cached
              puts "Invalid username or password!"
            end
          end
        end
        
        def svn_project_directory_path_exists?
          return false if !File.exists?(svn_project_directory_path)

          cd svn_project_directory_path do |dir|
            result = shell "svn info"
            return result.return_code == 0 # "svn info" will have a return code of 0 if the current directory is under source control
          end

        end
        
        def checkout_svn_working_directory        
          # setup local subversion working directory
          #create_directory svn_project_directory_path          
          
          cd svn_working_directory_path do |dir|
            result = shell "svn co \"#{svn_project_directory_url}\" \"#{svn_project_directory_name}\""
          end
        end
        
        def update_svn_working_directory
          checkout_svn_working_directory if !svn_project_directory_path_exists?
          cd svn_working_directory_path do |dir|
            result = shell "svn update"
          end          
        end
        
        def checkout
          @log.user "Checking out \"#{source_file_name}\" ..."
          cd svn_project_directory_path do |dir|
            under_source_control = File.exists?(source_file_name)
            file_copy source_file_path, svn_working_file_path
            if !under_source_control
              result = shell "svn add \"#{source_file_name}\""
              result = shell "svn commit -m \"added to source control\""
              return result.return_code == 0
            else
              return true
            end
          end
          
        end
      
        def checkin
          # translate Siebel Tools comment_file from unicode to ASCII so svn can process it
          # NOTE: svn command line tools can't handle unicode files
          write_string working_comment_file_path, read_ascii_string(comment_file_path)
          
          @log.user "Checking in \"#{source_file_name}\" ..."
          cd svn_project_directory_path  do |dir|
            file_copy source_file_path, svn_working_file_path
            result = shell "svn commit --file \"#{working_comment_file_path}\""
            return result.return_code == 0
          end
        end
      
        def start
          begin
            # parse command line parameters/options
            parse
            
            if operation.downcase =~ /checkout|checkin/
              validate_parameters
              backup_sources
              if !svn_credentials_cached?
                @log.info "SVN credentials ARE NOT cached"
                prompt_for_and_set_svn_credentials
              else
                @log.info "SVN credentials ARE cached"
              end
              update_svn_working_directory
              if operation.downcase =~ /checkout/
                if checkout
                  @log.user "checkout succeeded"
                else
                  @log.user "checkout failed"
                end
              end
              
              if operation.downcase =~ /checkin/
                if checkin
                  @log.user "checkin succeeded"
                else
                  @log.user "checkin failed"
                end
              end
            else
              raise "Invalid source code operation supplied.  Operation \"#{operation}\" not recognized."
            end
      
          rescue => e
            @log.fatal e.message
          end
        end
        
      end
    
    end
  
  end

end

logger = UIKit::LoggerWindow.new('Siebel Tools - Subversion Source Code Control Log')

class SimpleLogger
  
  attr_accessor :log_file_path
  
  def log_to_file s
    open(@log_file_path, File::WRONLY | File::APPEND | File::CREAT) do |f|
      f.puts s
    end
  end

  def log s
    log_to_file s
    puts s
  end
  
  [:user, :debug, :info, :warn, :error, :fatal].each {|n| alias_method n, :log }  
end

#logger = SimpleLogger.new

subversion_controller = RubySiebel::SiebelTools::SourceCodeControl::SubversionController.new({
  :logger => logger,
  :svn_server_url => 'http://subversion.merck.com/svn',
  :svn_repository_name => 'SiebelUS',
  :project_base_url_path => 'trunk/pfeilbr_temp',
  :svn_project_directory_name => 'siebel_tools',
  :initial_import_comment => 'initial import',
  :svn_working_directory_name => 'svn_working',
  :credential_check_timeout_in_seconds => 2
})

# reformat command line arguments by removing double-quotes (")
subversion_controller.parameters_array = ARGV.join(' ').gsub("\"", "").split(' ')
subversion_controller.start
logger.join

# force log contents to be flushed to file
#subversion_controller.log_file_handle.close

# open log file for viewing
#system "notepad.exe", subversion_controller.log_file_path.gsub("/", "\\")

# delete log file while in development
#rm_f subversion_controller.log_file_path.gsub("/", "\\")