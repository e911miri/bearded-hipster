class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :genotype
      t.string :status

      t.timestamps
    end
  end
end
