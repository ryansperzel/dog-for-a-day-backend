class DogSerializer < ActiveModel::Serializer
  has_many :appointments
  has_many :users, through: :appointments
  attributes :id, :shelter_id, :name, :age, :mix, :sex, :size, :description, :photo
end
