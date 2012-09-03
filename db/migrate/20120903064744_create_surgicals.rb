class CreateSurgicals < ActiveRecord::Migration
  def change
    create_table :surgicals do |t|
      t.integer :patient_id
      t.string :title
      t.string :description
      t.string :surgeon
      t.string :report

      t.timestamps
    end
  end
end
