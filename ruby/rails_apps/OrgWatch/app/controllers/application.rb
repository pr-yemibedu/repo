# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '7f1dd9923eb499d7bdb0b6a6f2a89aff'
  
  # global active scaffold configuration
  #ActiveScaffold.set_defaults do |config| 
  #  config.ignore_columns.add [:created_at, :updated_at, :lock_version, :version, :versions]
  #  config.dhtml_history = false
  #  config.theme = :blue
  #end
  
end
