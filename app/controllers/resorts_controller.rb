class ResortsController < ApplicationController
    def index 
        @resorts = Resort.all
    end

    def new
        @resort = Resort.new
    end

    def create
        @resort = Resort.create(resort_params)
    end

    private

    def resort_params
        params.require(:resort).permit(:name, :city, :price_range, :user_id, :rating)
    end


end
