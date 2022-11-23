class Appointment < ApplicationRecord
    # this determines the relationship between tables in the database
    belongs_to :user
    belongs_to :doctor
end
