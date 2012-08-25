class CreatePatientrecords < ActiveRecord::Migration
  def change
    create_table :patientrecords do |t|
      t.integer :patient_id

      t.timestamps
    end
  end
end
