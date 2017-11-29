class UserSerializer < ActiveModel::Serializer
  has_many :appointments
  has_many :dogs, through: :appointments
  attributes :id, :username, :password, :first_name, :last_name
end
