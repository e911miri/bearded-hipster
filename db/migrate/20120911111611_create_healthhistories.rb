class CreateHealthhistories < ActiveRecord::Migration
  def change
    create_table :healthhistories do |t|
      t.string :patient_id
      t.string :information

      t.timestamps
    end
  end
end
