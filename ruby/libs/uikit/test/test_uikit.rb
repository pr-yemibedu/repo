require 'uikit'
require 'pp'

include UIKit

def test_logger_window
  logger_window = LoggerWindow.new
  logger_window.info "hello"
  logger_window.join
end

def test_credentials_dialog
  credentials_dialog = CredentialsDialog.new("Subversion Credentials", 'Please enter your subversion credentials')
  credentials = credentials_dialog.show
  pp credentials
end

test_credentials_dialog