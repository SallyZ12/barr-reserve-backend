class Api::V1::RoomsController < ApplicationController

  def index
       @rooms = Room.all

       render json: @rooms
     end


     def show
       @room = set_room
       render json: @room

     end



end
