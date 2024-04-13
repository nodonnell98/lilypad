class CreateEnemy < ActiveRecord::Migration[7.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :health
      t.integer :stamina
      t.string :resource_tyoe
      t.integer :resource_qty
      t.integer :level
      t.boolean :completed

      t.timestamps
    end
  end
end
