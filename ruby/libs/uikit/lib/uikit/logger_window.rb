module UIKit

  class InternalLoggerWindow < FXMainWindow
    attr_accessor :log_message_list
    
    def initialize(anApp, window_title = 'Logger')
      @app = anApp
      super(anApp, window_title, :opts => DECOR_ALL, :width => 800, :height => 600)
      @buttons = FXHorizontalFrame.new(self,
        LAYOUT_SIDE_BOTTOM|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH)        
      
      @log_message_list = FXList.new(self, :opts => LIST_BROWSESELECT|LAYOUT_FILL_X|LAYOUT_FILL_Y)    

      @close_button = FXButton.new(@buttons, "&Close")
      @close_button.connect(SEL_COMMAND) do |sender, selector, data|
        @app.stop
      end      
      
    end
    
    def add s
      index = @log_message_list.appendItem s
      @log_message_list.deselectItem index - 1 if index - 1 >= 0
      @log_message_list.selectItem index
      @log_message_list.makeItemVisible index
    end
    
    def create
      super
      show(PLACEMENT_SCREEN)
    end

  end

  class LoggerWindow
    
    attr_accessor :app, :log_file_path
    
    def initialize(window_title = 'Logger')
      @window_title = window_title
      @displayed = false
    end
    
    def log_to_file s
      open(@log_file_path, File::WRONLY | File::APPEND | File::CREAT) do |f|
        f.puts s
      end
    end
    
    def log_to_window s
      if !@displayed
        @app = FXApp.new("LoggerWindow", "FXRuby")
        @internal_logger_window = InternalLoggerWindow.new(@app, @window_title)
        @app.create
        
        # show window w/o blocking
        @window_thread = Thread.new(@app) do |app|
          app.run
        end
   
        @displayed = true
      end
      s.split("\n").each{ |l| @internal_logger_window.add l }      
    end
        
    def log s
      log_to_file s
      #log_to_window s            
    end
    
    def user s
      log_to_file s  
      log_to_window s      
    end
    
    [:debug, :info, :warn, :error, :fatal].each {|n| alias_method n, :log }
    
    def join
      @window_thread.join if @window_thread
    end    
    
  end

end

