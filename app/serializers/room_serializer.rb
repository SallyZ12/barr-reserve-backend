class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_name


  has_many :reservations


  # def room_res
  #   self.object.reservations.where('date >=?', Date.today)
  # end



end
