class Api::V1::RoomsController < ApplicationController

  def index
       @rooms = Room.all

       render json: @rooms
     end



end
