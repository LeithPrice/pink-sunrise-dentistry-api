class AddIndexToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :docname, :string
    add_index :doctors, :docname, unique: true
  end
end
