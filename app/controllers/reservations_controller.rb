class ReservationsController < ApplicationController
    def new
        @reservation = Reservation.new
        @reservation.resort = Resort.find(params["resort_id"])
    end

    def index
        @reservations = Reservation.all
    end

    def create
        @reservation = Reservation.create(reservation_params)
        redirect_to @reservation
    end

    def show 
        @reservation= Reservation.find(params[:id])
    end

    private

    def reservation_params
        params.require(:reservation).permit(:length, :party_size, :user_id, :resort_id)
    end
   
end
