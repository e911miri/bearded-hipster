class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :user_id
      t.string :type
      t.integer :type_id

      t.timestamps
    end
  end
end
