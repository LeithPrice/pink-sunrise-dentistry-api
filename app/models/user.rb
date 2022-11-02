class User < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :doctors, through: :bookings
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
end
