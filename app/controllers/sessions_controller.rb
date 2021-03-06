class SessionsController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  # creates new session for users through login parameters (username, password)
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  # allows users to end their current session
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

  def page_requires_login
  end
  
end
