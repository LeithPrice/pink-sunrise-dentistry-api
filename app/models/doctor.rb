class Doctor < ApplicationRecord
  # belongs_to :users
  has_many :bookings
  has_many :users, through: :bookings
end
