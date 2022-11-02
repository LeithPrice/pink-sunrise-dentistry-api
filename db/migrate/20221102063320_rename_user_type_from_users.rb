class RenameUserTypeFromUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :user_type, :admin
  end
end
