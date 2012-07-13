class AddUserNameToModel < ActiveRecord::Migration
  def change
    add_column :models, :username, :string
  end
end
