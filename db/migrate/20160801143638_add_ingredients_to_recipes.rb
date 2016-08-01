class AddIngredientsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :ingredients, :text, array: true, default: []
  end
end
