class ActivitiesController < ApplicationController

    def index 
        @activities = Activity.all
    end

    def new
        @activity = Activity.new
    end

    def create
        @activity = Activity.create(activity_params)
    end

    def show
        @activity = Activity.find(params[:id])
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :length, :price, :rating)
    end
end
