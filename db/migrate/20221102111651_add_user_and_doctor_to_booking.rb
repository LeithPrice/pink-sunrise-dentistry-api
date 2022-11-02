class AddUserAndDoctorToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :doctor, foreign_key: { to_table: :users }
    add_reference :bookings, :patient, foreign_key: { to_table: :users }
  end
end
