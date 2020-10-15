class Api::V1::ReservationsController < ApplicationController

  def index

    if params[:user_id]
      @user = current_player

      @reservations = @user.reservations
      else
        @reservations = Reservation.all


    if params[:room_id]
      @room = set_room
      @reservations = @room.reservations
      else
        @reservations = Reservation.all
        end
      end
      render json: @reservations
  end


   def show
        @reservation = set_reservation
        render json: @reservation
  end

  def create
    # if logged_in?
       @reservation = Reservation.new(reservation_params)
         @user = current_player
            if @reservation.save
              render json: @user
            else
              render json: {
                error: "Your are Missing Day and/or Time"
              }
            end
    # else
    #   render json: {
    #     error: "Please log in to Reserve a Room"
    #   }
    # end
  end


  def destroy
    @reservation = set_reservation
      @user = User.find(@reservation.user_id)

      @reservation.destroy
        render json: @user
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
