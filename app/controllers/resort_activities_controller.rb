class ResortActivitiesController < ApplicationController

    def index
        @resort_activities = ResortActivity.where(user_id:session[:user_id])
        @user = User.find(session[:user_id])
    end


    def new
        @resort_activity = ResortActivity.new
        @resort_activity.activity = Activity.find(params["activity_id"])
        @resort_activity.resort = Resort.find_by(params["resort_id"])
        @resort_activity.user = User.find_by(params["user_id"])
    end

    def create
        @resort_activity = ResortActivity.create(activity_id: resort_activity_params["activity_id"],
         resort_id: resort_activity_params[:resort], user_id: session[:user_id])
        puts @resort_activity.errors.full_messages
        redirect_to @resort_activity
    end

    def show 
        @resort_activity = ResortActivity.find(params[:id])
        @user = @resort_activity.user
        if session[:user_id] != @user.id
            redirect_to resort_activities_path
        end

    end

    private

    def resort_activity_params
        params.require(:resort_activity).permit(:activity_id, :resort)
    end

end