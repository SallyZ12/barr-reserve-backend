class User < ApplicationRecord

  has_secure_password

  has_many :reservations
  has_many :rooms, through: :reservations

  validates :first_name, :last_name, :username, :email, :apartment, presence: true
  validates :username, :email, uniqueness: true

  validates :password, presence: true, length: {minimum: 8}

end

//test comment
