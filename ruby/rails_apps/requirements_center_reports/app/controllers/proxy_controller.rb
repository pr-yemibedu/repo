require 'open-uri'

class ProxyController < ApplicationController
  
  def proxy
    uri = 'http://subversion.merck.com/svn/Requirements%20Elicitation%20Support/blueprint/projects/SFA%20Modeling/main/Master%20Model/SFA.ucmodel'
    render :text => open(uri, :proxy => nil, :http_basic_authentication => ['pfeilbr', 'method33']).read
  end
  
end
