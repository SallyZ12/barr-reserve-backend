class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :apartment, :password_digest, :admin

  has_many :reservations

end
