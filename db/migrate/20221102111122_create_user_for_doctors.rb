class CreateUserForDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :doctor, foreign_key: { to_table: :users }
    end
  end
