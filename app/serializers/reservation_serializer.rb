class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :hour, :date, :confirmID

  belongs_to :user

  def reservation_room
    self.object.room.room_name  
  end



end
