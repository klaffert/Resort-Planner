class ApplicationController < ActionController::Base
    helper_method :redirect_user, :logged_in?, :current_user_name, :current_user_id, :list_all_budgets

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

    def current_user_id
        @user = User.find(session[:user_id])
        @user.id
    end

    def list_all_budgets
        return ['high', 'medium', 'low']
    end
end
