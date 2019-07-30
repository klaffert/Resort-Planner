class ReservationsController < ApplicationController
    def new
        @reservation = Reservation.new
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
        params.require(:reservation).permit(:length, :party_size)
    end
   
end
