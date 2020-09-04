class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :apartment, :password_digest, :admin

  has_many :reservations

end
