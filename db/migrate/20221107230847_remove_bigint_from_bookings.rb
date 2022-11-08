class RemoveBigintFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :doctor_id
    remove_column :bookings, :patient_id
  end
end
