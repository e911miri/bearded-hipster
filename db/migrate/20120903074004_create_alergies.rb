class CreateAlergies < ActiveRecord::Migration
  def change
    create_table :alergies do |t|
      t.integer :patient_id
      t.string :irritant
      t.string :symptoms
      t.string :remedy
      t.string :doctor

      t.timestamps
    end
  end
end
