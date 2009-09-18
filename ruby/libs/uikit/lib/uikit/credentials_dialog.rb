module UIKit

  class InternalCredentialsDialog < FXMainWindow
    attr_accessor :username, :password
    
    def initialize(anApp, window_title = 'Enter Credentials', prompt = 'Please enter your credentials')
      @app = anApp
      super(anApp, window_title, :opts => DECOR_ALL, :width => 250, :height => 130)
      
      @prompt_frame = FXHorizontalFrame.new(self,
        LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH)
      @prompt_label = FXLabel.new(@prompt_frame, prompt)        
      
      @username_frame = FXHorizontalFrame.new(self,
        LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH)
      @username_label = FXLabel.new(@username_frame, 'Username:')
      @username_text_field = FXTextField.new(@username_frame, 15, :opts => TEXTFIELD_NORMAL)
      @username_text_field.text = ENV['USERNAME'] if ENV['USERNAME']
      
      @password_frame = FXHorizontalFrame.new(self,
        LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH)      
      @password_label = FXLabel.new(@password_frame, 'Password:')
      @password_text_field = FXTextField.new(@password_frame, 15, :opts => TEXTFIELD_NORMAL|TEXTFIELD_PASSWD)

      @buttons_frame = FXHorizontalFrame.new(self,
        LAYOUT_SIDE_BOTTOM|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH)
      @ok_button = FXButton.new(@buttons_frame, "&OK")
      
      @ok_button.connect(SEL_COMMAND) do |sender, selector, data|
        @username = @username_text_field.text
        @password = @password_text_field.text
        @app.stop
      end      
    end
    
    def create
      super
      show(PLACEMENT_SCREEN)
    end

  end

  class CredentialsDialog
    
    def initialize(window_title = 'Enter Credentials', prompt = 'Please enter your credentials')
      @window_title = window_title
      @prompt = prompt
      @displayed = false
    end
    
    def show
      @app = FXApp.new("CredentialsDialog", "FXRuby")
      @window = InternalCredentialsDialog.new(@app, @window_title, @prompt)
      @app.create
      @app.run
      [@window.username, @window.password]
    end
    
    def join
      @window_thread.join if @window_thread
    end    
    
  end

end

