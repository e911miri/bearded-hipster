class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.integer :patient_id
      t.string :condition
      t.string :reason
      t.string :treatment
      t.string :doctor

      t.timestamps
    end
  end
end
