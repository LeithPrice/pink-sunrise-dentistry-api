class AddTimeToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :label, :string
    add_column :bookings, :hour, :integer
    add_column :bookings, :minutes, :integer
    add_column :bookings, :booked, :boolean
    add_reference :bookings, :doctor, foreign_key: true
    # add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :atend, foreign_key: true

  end
end
