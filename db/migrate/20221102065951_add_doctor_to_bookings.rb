class AddDoctorToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :doctor, null: false, default: 1, foreign_key: true
  end
end
