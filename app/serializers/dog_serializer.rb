class DogSerializer < ActiveModel::Serializer
  has_many :appointments
  attributes :id, :shelter_id, :name, :age, :mix, :sex, :size, :description, :photo
end
