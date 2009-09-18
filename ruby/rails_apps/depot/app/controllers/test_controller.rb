class TestController < ApplicationController

  def index
  end
  
  def update_content
    @content = 'Hello Update'
    render(:layout=>false)
  end
end
