class Dog < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  # belongs_to :shelter


end
