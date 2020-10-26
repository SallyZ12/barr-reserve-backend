class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_name, :room_res_date


  has_many :reservations

  def room_res_date
    self.object.reservations.where('date >=?', Date.today)
  end


end
