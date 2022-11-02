class RenameAppointmentTimeToBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :appointment_time, :start_date
  end
end
