class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :directions
      t.integer :time

      t.timestamps null: false
    end
  end
end
