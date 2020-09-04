class Api::V1::RoomsController < ApplicationController

  def index
       @rooms = Room.all

       render json: @rooms
     end


     def show
       @room = set_room
       render json: @room

     end


     private

       def set_room
         @room = User.find(params[:id])
       end

       def user_params
         params.require(:user).permit(:room_name)
       end





end
