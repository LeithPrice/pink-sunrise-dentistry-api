class RemoveUserFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :user_id
  end
end
