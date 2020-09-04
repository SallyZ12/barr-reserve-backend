class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_name, :room_res


  has_many :reservations


  def room_res
    self.object.reservations.where('date >=?', Date.today)
  end



end
