class AuthController < ApplicationController
  def login
  end

  def verify
      flash[:message] = nil
      user = User.find_by(name: params[:auth][:name])
      if user && user.authenticate(params[:auth][:password])
          session[:user_id] = user.id
          redirect_to reservations_path
      else
          if !user
              flash[:message] = "User name not found."
          elsif !user.authenticate(params[:auth][:password])
              flash[:message] = "Password not match."
          end
          render :login
      end
  end

  def logout
      session.clear
      redirect_to login_path
  end
end