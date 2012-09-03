class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id
      t.string :drug
      t.string :dossage
      t.string :duration
      t.string :pharmacist

      t.timestamps
    end
  end
end
