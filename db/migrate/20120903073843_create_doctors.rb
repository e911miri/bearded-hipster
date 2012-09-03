class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :gender
      t.string :address
      t.string :specialty
      t.string :email

      t.timestamps
    end
  end
end
