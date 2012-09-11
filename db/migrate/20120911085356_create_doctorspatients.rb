class CreateDoctorspatients < ActiveRecord::Migration
  def change
    create_table :doctorspatients do |t|
      t.string :doctor_id
      t.string :patient_id

      t.timestamps
    end
  end
end
