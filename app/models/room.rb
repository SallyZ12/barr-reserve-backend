class Room < ApplicationRecord

  has_many :reservations
  has_many :users, through: :reservations

  validates :room_name, presence: true


end
