class AddLevelToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :level, :integer
  end
end
