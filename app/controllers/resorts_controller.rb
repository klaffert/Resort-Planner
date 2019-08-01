class ResortsController < ApplicationController
    def index 
        @resorts = Resort.all
        if params[:city]
            @resorts = Resort.where(city:params[:city])
        end
        if params[:price_range]
            @resorts = Resort.where(price_range:params[:price_range])
        end
        
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
    
        redirect_to resorts_path(city: params[:id])
    end

    def search_by_budget
        puts params
        budget_range = params[:id]
        redirect_to resorts_path(price_range: params[:id])
    end

    private

    def resort_params
        params.require(:resort).permit(:name, :city, :price_range, :user_id, :rating)
    end

end
