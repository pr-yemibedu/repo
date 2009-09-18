$:.unshift(File.dirname(__FILE__))

# fxruby is the base toolkit for uikit
require 'fox16'
include Fox

module UIKit
  include Fox
end

require 'uikit/logger_window'
require 'uikit/credentials_dialog'
