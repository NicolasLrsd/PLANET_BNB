class CreatePlanets < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :detail
      t.string :name
      t.integer :price
      t.timestamps
    end
  end
end
