class ActivitiesController < ApplicationController

    def index 
        @activities = Activity.all
    end

    def new
        @activity = Activity.new
    end

    def create
        @activity = Activity.create(activity_params)
        redirect_to @activity
        # redirect_to activities_path
    end

    def show
        @activity = Activity.find(params[:id])
        @resort_activity = ResortActivity.new
        @resort_activity.activity = @activity
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :length, :price, :rating)
    end
end
