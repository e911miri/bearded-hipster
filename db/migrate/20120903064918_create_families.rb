class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :patient_id
      t.string :condition
      t.string :description

      t.timestamps
    end
  end
end
