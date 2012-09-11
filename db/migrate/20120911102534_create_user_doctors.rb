class CreateUserDoctors < ActiveRecord::Migration
  def change
    create_table :user_doctors do |t|
      t.string :user_id
      t.string :doctor_id

      t.timestamps
    end
  end
end
