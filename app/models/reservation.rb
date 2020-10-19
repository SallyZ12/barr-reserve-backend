class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :room

  validates :room_id, uniqueness: {scope: [:date, :hour]}

  validates :hour, :date, presence: true


end
