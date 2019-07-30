class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user= User.new
    end

    def create
        @user = User.create(user_params)

    end

    def show
       @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :budget)
    end
end
