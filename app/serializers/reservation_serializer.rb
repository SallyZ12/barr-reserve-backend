class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :hour, :date, :confirmID, :reservation_room, :reservation_user_apt

  belongs_to :user
  belongs_to :room

  def reservation_room
    self.object.room.room_name
  end

  def reservation_user_apt
    self.object.user.apartment
  end


end
