class AddTimeToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :label, :string
    add_column :bookings, :hour, :integer
    add_column :bookings, :minutes, :integer
    add_column :bookings, :booked, :boolean
    add_reference :bookings, :doctor, null: false, foreign_key: true
    add_reference :bookings, :user, null: true, foreign_key: true
    add_reference :bookings, :atend, null: false, foreign_key: true

  end
end
