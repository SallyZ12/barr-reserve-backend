class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :hour, :date, :confirmID
end
