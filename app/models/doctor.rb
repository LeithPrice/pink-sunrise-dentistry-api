class Doctor < ApplicationRecord
  # belongs_to :users
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments, source: 'user'

  has_many :bookings, dependent: :destroy
  has_many :attendings, through: :bookings, source: 'atend'
end
