class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :appointment_time
      t.text :doctor_id

      t.timestamps
    end
  end
end
