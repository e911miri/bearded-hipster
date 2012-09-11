class CreateSurgicals < ActiveRecord::Migration
  def change
    create_table :surgicals do |t|
      t.string :condition
      t.string :procedure
      t.string :surgeon
      t.integer :patient_id

      t.timestamps
    end
  end
end
