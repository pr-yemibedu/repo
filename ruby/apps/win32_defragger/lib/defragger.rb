require 'rubyscript2exe'
require 'yaml'
require 'logger'
require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'utility_pack'
require 'tmpdir'
require 'pp'

exit if RUBYSCRIPT2EXE.is_compiling?

class Defragger < Logger::Application
  include UtilityPack::Win32::ShellHelpers
  include UtilityPack::Win32::ProcessHelpers
  include UtilityPack::DateTimeHelpers  

  # defrag processes
  PROCESSES = %w( defrag.exe dfrgntfs.exe contig.exe  )
  
  def initialize
    @script_name = File.basename(__FILE__, ".rb")
    super(@script_name)
    set_log "#{Dir.tmpdir}/#{@script_name}.log"
    self.level = INFO
    @t = nil
  end  

  def parse(args)
    options = OpenStruct.new

    # set sensible defaults
    options.start_time = HourMinSec.local(2000)
    options.duration = 60 # defrag for 1 hour
    options.poll_interval_in_seconds = 60 # check if we should run every minute

    OptionParser.new do |opts|
      opts.banner = "Usage: #{__FILE__} [options]"

      opts.separator ""
      opts.separator "Specific options:"  

      opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
        options.verbose = v
      end

      # required start time.  Specifies when defragging should start
      opts.on("-t", "--start-time STARTTIME", Time, "Begin execution at given time") do |start_time|
        options.start_time = start_time
      end

      # require duration in minutes
      opts.on("-d", "--duration=minutes", Integer, "Run for a duration of N minutes") do |n|
        options.duration = n
      end

      # how often the defragger process should check to see if it should run
      opts.on("-p", "--poll-interval=seconds", Integer, "Check if defragger should run every N seconds") do |n|
        options.poll_interval_in_seconds = n
      end

      opts.separator ""
      opts.separator "Common options:"

      # No argument, shows at tail.  This will print an options summary.
      # Try it and see!
      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end
      
      opts.separator ""
      opts.separator "Examples:"
      opts.separator "#{@script_name} --start-time=12:00 --duration=1 --poll-interval=30"
      
      opts.parse!(args)
    end
    
    # convert the start time Time object into an HourMinSec object
    options.start_time = HourMinSec.at(options.start_time.dup.to_i)

    # calculate end time based on start time + duration in minutes
    options.end_time = options.start_time + (options.duration.to_i * 60)    
    
    options
  end
  
  def start_defrag
    @log.info "Defragging starting ..."
    @t = Thread.new do
      while true # run until we're killed
        cmd_then_exit "defrag c: -f"
        cmd_then_exit "#{RUBYSCRIPT2EXE.appdir}/../bin/contig.exe -s -v c:\\*"
      end
    end
    @log.info "Defragging started"
    @t
  end    
  
  def stop_defrag
    @log.info "Defragging stopping ..."
    @log.info "Killing main defrag thread"
    @t.kill! if @t
    @t = nil
    @log.info "Killing the following processes: #{PROCESSES.join(',')}"
    kill(*PROCESSES)
    @log.info "Defragging stopped"
  end
  
  private :parse, :start_defrag, :stop_defrag
  
  def run
    options = parse(ARGV)
    @log.info "Defragging with the following options:\n#{options.to_yaml}"

    # kill all threads and processes if were asked to exit
    trap(:INT) do
      @log.info "Premature exit requested"
      stop_defrag
      @log.info "Exiting"
      exit!(-1)
    end

    # shorten variables
    start_time = options.start_time
    end_time = options.end_time
    
    # run forever
    while true

      # check if we should be running
      if !@t and HourMinSec.now >= start_time and HourMinSec.now <= end_time
        start_defrag
      end

      # check if we should stop running
      if @t and !(HourMinSec.now >= start_time and HourMinSec.now <= end_time)
        stop_defrag
      end

      @log.debug "Sleeping for #{options.poll_interval_in_seconds} seconds"
      sleep options.poll_interval_in_seconds
    end    
    
  end
end

# run the app
Defragger.new.start