class Reservation < ApplicationRecord

  belongs_to :user

  validates :room_id, uniqueness: {scope: [:date, :hour]}

  validates :hour, :date, presence: true


end
