class Atend < ApplicationRecord
    # this determines the relationship between tables in the database
    has_many :bookings, dependent: :destroy
    has_many :doctors, through: :bookings, source: 'atend'
end
