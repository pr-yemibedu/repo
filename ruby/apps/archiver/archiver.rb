require 'yaml'
require 'date'
require 'logger'

class Archiver < Logger::Application

  def initialize
    script_name = File.basename(__FILE__, ".rb")
    super(script_name)
    @config = YAML::load_file("#{script_name}.yml")
    set_log "#{script_name}.log"
  end

  def run
  
    for profile_name in @config[:syncbak_profiles]
      command = "#{@config[:syncbak_program_path]} -m \"#{profile_name}\""
      @log.info "executing #{command}"
      @log.info system(command) ? "Completed successfully" : "Failed"
    end
    
    # filenameyyyymmdd.zip
    archive_file_format = /^(.*)(\d{8,8})(\.zip)/i
    archive_count = @config[:archive_count]
    
    backup_directory_path = @config[:backup_directory_path]
    file_paths = Dir.glob("#{backup_directory_path}/*.zip")
    file_paths.each { |file_path|
      if not(file_path =~ archive_file_format) and (file_path =~ /.*\.zip/i)
        file_directory_path = File.dirname(file_path)
        bare_file_name = File.basename(file_path, ".zip")
        date_string = File.mtime(file_path).strftime('%Y%m%d')
        new_file_path = file_directory_path + File::SEPARATOR + bare_file_name + "_#{date_string}.zip"
        @log.info "rename #{file_path} #{new_file_path}"
        File.rename(file_path, new_file_path)
      end
    }
    
    file_paths = Dir.glob("#{backup_directory_path}/*.zip")
    archive_file_paths = file_paths.delete_if { |file_path| not(file_path =~ archive_file_format) }
    archive_base_file_names = {}
    archive_file_paths.each { |file_path|
      archive_base_file_names[$1] = [] if file_path =~ archive_file_format
    }
    
    archive_base_file_names.each_key { |base_file_name|
      archive_base_file_names[base_file_name] << Dir.glob("#{base_file_name}*")
    }
    
    archive_base_file_names.each_value { |archive_file_set|
      archive_file_set.sort! { |file1, file2| File.mtime(file1) <=> File.mtime(file2) }.reverse!
      archive_file_set[archive_count..-1] || [].each { |file_path|
        @log.info "delete #{file_path}"
      }
    }
    
    0 # return status
  end
  
end

status = Archiver.new().start