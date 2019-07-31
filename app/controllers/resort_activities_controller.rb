class ResortActivitiesController < ApplicationController

    def index
        @resort_activities = ResortActivity.all
    end


    def new
        @resort_activity = ResortActivity.new
        @resort_activity.activity = Activity.find(params["activity_id"])
    end

    def create
        @resort_activity = ResortActivity.create(resort_activity_params)
        redirect_to @resort_activity
    end

    def show 
        @resort_activity = ResortActivity.find(params[:id])
    end

    private

    def resort_activity_params
        params.require(:resort_activity).permit(:activity_id, :resort_id)
    end

end