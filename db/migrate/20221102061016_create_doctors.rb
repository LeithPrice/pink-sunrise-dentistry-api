class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.references :user, null: false, default: 1, foreign_key: true

      t.timestamps
    end
  end
end