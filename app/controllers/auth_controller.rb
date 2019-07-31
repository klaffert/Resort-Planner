class AuthController < ApplicationController
  def login
  end

  def verify
      @user = User.find_by(name: params[:auth][:name])
      if @user && @user.validate(params[:auth][:password])
          session[:user_id] = @user.id
          redirect_to reservations_path
      else
          render :login
      end
  end

  def logout
      session.clear
      redirect_to login_path
  end
end