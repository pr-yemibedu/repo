require 'optparse'
require 'ostruct'
require 'fileutils'
require 'logger'
require 'pp'

module FileCategorizer

  class OptionsParser
    
    def self.parse(args)
      options = OpenStruct.new
  
      # set default options
      options.file_types = []
      options.clean_target_directory = false
      options.verbose = false
  
      opts = OptionParser.new do |opts|
        opts.banner = "Usage: #{File.basename(__FILE__)} [options]"
        opts.separator ""
        opts.separator "Specific options:"
        
        opts.on("-s", "--source-directory SOURCE_DIRECTORY", "A source directory is required") do |source_directory|
          options.source_directory = source_directory
        end
        
        opts.on("-t", "--target-directory TARGET_DIRECTORY", "A target directory is required") do |target_directory|
          options.target_directory = target_directory
        end
        
        opts.on("--file-types x,y,z", Array, "Example: txt,doc,pdf") do |file_types|
          options.file_types = file_types
        end      
        
        opts.on("-c", "--clean-target-directory", "Delete the target directory before categorization") do
          options.clean_target_directory = true
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
  
  class FileCategorizer
  
    attr_reader :files_categorized_count
  
    def initialize(options)
      @source_directory = options.source_directory
      @target_directory = options.target_directory
      @file_types = options.file_types
      @clean_target_directory = options.clean_target_directory
      @files_categorized_count = 0
      @duplicate_files_count = 0
      @verbose = options.verbose
      
      @log = Logger.new(STDOUT)
      @log.level = Logger::DEBUG
      @log.datetime_format = "%H:%H:%S"
    end
    
    def run()
      file_list = []
      
      # get files of specified type (ext)
      @file_types.each do |file_type|
        file_list += Dir.glob("#{@source_directory}/**/*.#{file_type}")
      end
      
      # remove any non-files
      file_list.reject! { |file_path| ! File.stat(file_path).file? }
      
      # clean target directory if specified
      FileUtils.rmtree @target_directory if @clean_target_directory
      
      # categorize each file
      file_list.each { |file_path| categorize(file_path) }
      
      self
    end
    
  private
    def categorize(source_file_path)
      creation_date = File.stat(source_file_path).mtime
      year = creation_date.year
      month = "%02d" % creation_date.month
  
      target_directory_path = "#{@target_directory}/#{year}/#{month}"
      target_file_path = "#{target_directory_path}/#{File.basename(source_file_path)}"
      
      if ! File.exist?(target_file_path) || ! FileUtils.identical?(source_file_path, target_file_path) then
        FileUtils.mkpath target_directory_path # create target directory
        FileUtils.copy_file(source_file_path, target_file_path)
        @files_categorized_count += 1
        @log.info(source_file_path)
      else
        @duplicate_files_count += 1
      end
    end  
  
  end
end

options = FileCategorizer::OptionsParser.parse(ARGV)
file_categorizer = FileCategorizer::FileCategorizer.new(options).run
pp "Files categorized = #{file_categorizer.files_categorized_count}"

