class RemoveDoctorIdFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :doctor_id
  end
end
