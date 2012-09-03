class AddIsadminAndTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isadmin, :boolean
    add_column :users, :type, :string
  end
end
