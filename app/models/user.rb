class User < ApplicationRecord
    # this determines the relationship between tables in the database
    has_secure_password
    has_many :appointments, dependent: :destroy
    has_many :physicians, through: :appointments, source: 'doctor'
    has_many :bookings
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
end
