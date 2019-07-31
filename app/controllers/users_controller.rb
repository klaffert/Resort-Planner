class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user= User.new
    end

    def create
        @user = User.new(name:params[:user][:name], password: params[:user][:password])
        if @user.save
          session[:user_id] = @user.id
          redirect_to reservations_path
        else
          flash[:message] = "Please enter the correct stuff"
          render :new
        end
    end

    def show
       @user = User.find(params[:id])
    end

    def edit
        @user =User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :budget)
    end
end
