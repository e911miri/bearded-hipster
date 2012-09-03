class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :gender
      t.string :origin
      t.string :address
      t.string :tribe
      t.string :occupation
      t.string :religion
      t.string :phone
      t.string :nextofkin
      t.string :family_history
      t.string :past_medical_record

      t.timestamps
    end
  end
end
