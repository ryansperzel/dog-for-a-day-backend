class User < ApplicationRecord
  has_many :dogs, through: :appointments

end
