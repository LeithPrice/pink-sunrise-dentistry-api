class RemoveDoctorFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :doctor_id
  end
end
