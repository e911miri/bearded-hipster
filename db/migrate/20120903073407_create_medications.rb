class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id
      t.string :condition
      t.string :drug
      t.string :dossage
      t.string :duration
      t.string :doctor

      t.timestamps
    end
  end
end
