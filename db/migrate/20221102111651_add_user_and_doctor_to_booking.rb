class AddUserAndDoctorToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :doctor, null: false, foreign_key: { to_table: :users }
    add_reference :bookings, :patient, null: false, foreign_key: { to_table: :users }
  end
end
