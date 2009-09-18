class StartController < ApplicationController
  
  before_filter :iphone_user_agent_check
  before_filter :login_required, :except => [:login]
  
  def login
  end
  
  def index
    show_page 'index'
  end

  def search
    show_page 'search'
  end
  
  private
  
  def iphone_user_agent_check
    if !iphone_user_agent?
      render :text => 'Available only on the iPhone'
    end
  end
  
  def show_page action
    if logged_in?
      render :action => action, :layout => false
    else
      # this html partial is sent back because this is in response to an iui ajax request
      render :text => %{
        <div class="panel" title="Login Failed" id="loginfailed" selected="true">
          <h2>Login failed</h2>
          <p>Incorrect Username or Password</p>
          <p>Please try again</p>
          <a class="whiteButton" href="#login">Login</a>
        </div>
      }
    end

  end
  
  def login_required
  
      if params['login'] == 'obrienc' and params['password'] == 'michigan'
        session['authenticated'] = true
      else
        session['authenticated'] = false
      end
  
  end
  
  def logged_in?
    session['authenticated']
  end

end
