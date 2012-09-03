class CreateAlergies < ActiveRecord::Migration
  def change
    create_table :alergies do |t|
      t.integer :patient_id
      t.string :substance
      t.string :description
      t.string :remedy

      t.timestamps
    end
  end
end
