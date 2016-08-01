class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :directions, array: true, default: []
      t.integer :time

      t.timestamps null: false
    end
  end
end
