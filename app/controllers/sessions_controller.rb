class SessionsController < ApplicationController
  def new
  end
  
  def create
     user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      redirect_to root_url
      # render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
  end
