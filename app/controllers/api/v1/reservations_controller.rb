class Api::V1::ReservationsController < ApplicationController

  def index
       @reservations = Reservation.all
       render json: @reservations
  end




  private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end
  

    def set_room
      @room = Room.find(params[:room_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end


    def reservation_params
      params.require(:reservation).permit(:user_id,:room_id, :hour, :date, :confirmID)
    end










end
