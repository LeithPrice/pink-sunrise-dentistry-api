class RemoveDoctorFromDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :user_id
  end
end
