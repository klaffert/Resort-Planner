class ApplicationController < ActionController::Base
    helper_method :redirect_user, :logged_in?, :current_user_name

    def redirect_user
        if !logged_in?
          redirect_to login_path
        end
    end
  
    def logged_in?
        !!session[:user_id]
    end

    def current_user_name
        @user = User.find(session[:user_id])
        @user.name
    end
end
