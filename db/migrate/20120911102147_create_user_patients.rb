class CreateUserPatients < ActiveRecord::Migration
  def change
    create_table :user_patients do |t|
      t.string :user_id
      t.string :patient_id

      t.timestamps
    end
  end
end
