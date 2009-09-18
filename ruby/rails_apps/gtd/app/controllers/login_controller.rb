class LoginController < ApplicationController

  def index
    if session[:user_id]
      redirect_to :controller => 'tasks', :action => 'index'
    end
  end

  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:username], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to :controller => 'tasks', :action => 'index'
      else
        flash[:notice] = "Invalid user/password combination"
      end
    else
      redirect_to :action => 'index'       
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to :action => 'index'
  end
  
  def add_user
#    @user = User.new(params[:user])
#    if request.post? and @user.save
#    flash[:notice] = "User #{@user.name} created"
#    @user = User.new
  end
  
end