class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    
    # finds current user by session
    def current_user
        User.find_by(id: session[:user_id])
    end

    # determines if the user is logged in
    def logged_in?
        !current_user.nil?
    end

    # determines if a user can access certain pages based on log in status
    def authorized
       redirect_to login_url, alert: "Please login or sign up to use Picto Vault" unless logged_in?
    end

end
