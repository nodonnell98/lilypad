class CreateFrog < ActiveRecord::Migration[7.1]
  def change
    create_table :frogs do |t|
      t.string :name
      t.string :species
      t.integer :health
      t.integer :wins
      t.integer :losses
      t.integer :stamina
      t.string :rarity
      t.integer :level

      t.timestamps
    end
  end
end
