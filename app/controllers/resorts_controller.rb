class ResortsController < ApplicationController
    def index 
        @resorts = Resort.all
        @resorts_by_city = Resort.where(city:params[:id])
    end

    def new
        @resort = Resort.new
    end

    def create
        @resort = Resort.create(resort_params)
        redirect_to @resort
    end

    def show
        @resort= Resort.find(params[:id])
    end

    def edit
        @resort = Resort.find(params[:id])
    end

    def update
        @resort = Resort.find(params[:id])
        @resort.update(resort_params)
        redirect_to @resort
    end

    private

    def resort_params
        params.require(:resort).permit(:name, :city, :price_range, :user_id, :rating)
    end


end
