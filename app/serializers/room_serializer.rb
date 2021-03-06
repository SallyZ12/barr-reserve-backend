class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_name

  has_many :reservations





end
