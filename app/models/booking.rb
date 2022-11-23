class Booking < ApplicationRecord
    # this determines the relationship between tables in the database
    belongs_to :atend
    belongs_to :doctor
end
