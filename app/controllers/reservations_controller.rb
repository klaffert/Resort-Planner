class ReservationsController < ApplicationController
    before_action :redirect_user

    def new
        @reservation = Reservation.new
        
    end

    def index
        if !session[:user_id]
            redirect_to login_path
        else
            @user = User.find(session[:user_id])
            @reservations = Reservation.where(user_id: @user.id)
        end
    end

    def create
        
        @reservation = Reservation.create(length: reservation_params["length"],
         party_size: reservation_params["party_size"], 
         user_id: session[:user_id], 
         resort_id: reservation_params["resort_id"])
         puts @reservation.errors.full_messages
        redirect_to @reservation
    end

    def show 
        @reservation= Reservation.find(params[:id])
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.delete
        redirect_to resorts_path
    end

    private

    def reservation_params
        params.require(:reservation).permit(:length, :party_size, :resort_id)
    end
   
end
