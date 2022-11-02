class CreateUserForDoctors < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :doctor, null: false, default: 1, foreign_key: { to_table: :users }
    end
  end
