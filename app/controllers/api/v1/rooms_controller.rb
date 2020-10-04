class Api::V1::RoomsController < ApplicationController

  def index
       @rooms = Room.all

       render json: @rooms
     end


     def show
       @room = set_room
       render json: @room

     end

     def create
      @room = Room.new(room_params)
           if @room.save
           render json: @room
           else
           resp = {
             error: @room.errors.full_messages.to_sentence
           }
       render json: resp
        end
    end

    def update
      @room = set_room

         @room.update(room_params)
         if @room.save
             render json: @room
         else
           resp = {
             error: @user.errors.full_messages.to_sentence
           }
           render json: resp
         end
     end

    def destroy
          @room = set_room

          if @room.reservations.present?
            render json: {
              error: "Can not delete a Room with reservations"
         }

         else
          @room.destroy
          render json: @room
        end
    end



     private

       def set_room
         @room = User.find(params[:id])
       end

       def room_params
         params.require(:user).permit(:room_name)
       end

       def set_user
       @user = User.find(params[:user_id])
      end

      def set_reservation
       @reservation = Reservation.find(params[:reservation_id])
     end



end
