class ResortsController < ApplicationController
    def index 
        @resorts = Resort.all
        if params[:city]
            @resorts = Resort.where(city:params[:city])
        end
        @resorts_by_budget= Resort.where(price_range:params[:id])
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

    def search_by_city
        cityName = params[:id]
        redirect_to resorts_path(city: params[:id])
    end

    private

    def resort_params
        params.require(:resort).permit(:name, :city, :price_range, :user_id, :rating)
    end

end
